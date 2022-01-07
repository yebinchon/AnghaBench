
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AT91PS_USART ;


 scalar_t__ AT91F_US_GetChar (int ) ;
 scalar_t__ AT91F_US_RxReady (int ) ;
 int port_detected ;
 scalar_t__ us ;
 scalar_t__* usa ;

int at91_serial_getc()
{
 while(1) {
  if(AT91F_US_RxReady((AT91PS_USART)us)) {



   return((int)AT91F_US_GetChar((AT91PS_USART)us));
  }
 }
}
