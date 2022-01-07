
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DATA_REG ;
 int UART_FLAG_REG ;
 int get32 (int ) ;

char uart_recv ( void )
{
 while(1) {
  if(!(get32(UART_FLAG_REG)&0x10))
   break;
 }
 return(get32(UART_DATA_REG)&0xFF);
}
