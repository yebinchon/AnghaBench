
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int baud_rate; } ;


 int ETS_UART_INUM ;
 int _X_xtos_ints_off (int) ;
 int _c_0x3fffdb2c_uart_int_handler_arg ;
 int _xtos_set_interrupt_handler_arg (int,int ,int ) ;
 int uart_int_handler ;
 TYPE_1__ uartdev ;

void _X_uart_attach(void) {

  uartdev.baud_rate = 115200;
  _X_xtos_ints_off(1 << ETS_UART_INUM);







  _xtos_set_interrupt_handler_arg(ETS_UART_INUM, uart_int_handler, _c_0x3fffdb2c_uart_int_handler_arg);
}
