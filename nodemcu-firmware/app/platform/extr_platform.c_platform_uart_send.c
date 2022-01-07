
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int uart_tx_one_char (unsigned int,int ) ;

void platform_uart_send( unsigned id, u8 data )
{
  uart_tx_one_char(id, data);
}
