
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pl011_uart_init () ;
 int pl011_uart_recv () ;
 int pl011_uart_send (int ) ;
 int pl011_uart_send_string (char*) ;

void kernel_main(void)
{
 pl011_uart_init();
 pl011_uart_send_string("Hello, world!\r\n");

 while (1) {
  pl011_uart_send(pl011_uart_recv());
 }
}
