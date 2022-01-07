
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DR_REG ;
 int UART_FR_REG ;
 char get32 (int ) ;

char uart_recv ( void )
{

 while(get32(UART_FR_REG) & (1<<4)) {
 }
 return(get32(UART_DR_REG));
}
