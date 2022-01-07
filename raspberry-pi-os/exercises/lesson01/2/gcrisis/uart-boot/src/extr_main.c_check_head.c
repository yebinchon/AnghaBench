
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 char uart_recv () ;
 int uart_send_string (char*) ;

void check_head(char *h,int hlen)
{
    uint8_t index=0;
    while(1)
 {
  char c=uart_recv();
  if(c==h[index])
  {
   index++;
  }
  else
  {
   if(c==h[0])
    index=1;
   else
    index=0;
  }
  if(index==hlen)
   break;
 }
 uart_send_string("OK");
}
