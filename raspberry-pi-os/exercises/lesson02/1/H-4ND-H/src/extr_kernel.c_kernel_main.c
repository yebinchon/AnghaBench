
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_el () ;
 int uart_recv () ;
 int uart_send (int ) ;

void kernel_main(void)
{
 print_el();
 while (1) {
  uart_send(uart_recv());
 }
}
