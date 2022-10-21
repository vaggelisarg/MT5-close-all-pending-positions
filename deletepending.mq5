#include<Trade\Trade.mqh>
CTrade trade;



void OnTick()
{
   


   MqlDateTime mdt;
   datetime dtSer=TimeCurrent(mdt);
   Print(mdt.hour);
   
   if (  (mdt.min==59) && (mdt.hour==0) )
   {
     Print(mdt.sec);
     CancelOrder();  
     }
   }


void CancelOrder()
{


   for (int i=OrdersTotal()-1; i>=0; i--)
   {
   
       ulong OrderTicket = OrderGetTicket(i);
       trade.OrderDelete(OrderTicket);
   
   }
   
 }
//+------------------------------------------------------------------+


