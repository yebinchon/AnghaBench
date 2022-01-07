
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DATA_REG ;
 int UART_FLAG_REG ;
 int get32 (int ) ;
 int put32 (int ,char) ;

void uart_send ( char c )
{
 while(1) {
  if(!(get32(UART_FLAG_REG)&0x20))
   break;
 }
 put32(UART_DATA_REG,c);
}
