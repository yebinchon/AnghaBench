
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AT91PS_USART ;


 int AT91F_US_PutChar (int ,char) ;
 int AT91F_US_TxReady (int ) ;
 scalar_t__ us ;

int at91_serial_putc(int ch)
{
 if (ch == '\n')
  at91_serial_putc('\r');
 while (!AT91F_US_TxReady((AT91PS_USART)us));
 AT91F_US_PutChar((AT91PS_USART)us, (char)ch);
 return ch;
}
