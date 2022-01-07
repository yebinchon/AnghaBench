
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DR ;
 int UART_FR ;
 int get32 (int ) ;
 int put32 (int ,char) ;

void uart_send ( char c )
{



 while(get32(UART_FR) & (1 << 5)) {}

 put32(UART_DR,c);
}
