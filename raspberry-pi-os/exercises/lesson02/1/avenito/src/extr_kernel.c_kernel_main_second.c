
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int printf (char*,int) ;
 int uart_recv () ;
 int uart_send (int ) ;

void kernel_main_second(void)
{
 int el = get_el();
 printf("2.Exception level: %d \r\n", el);

 while (1) {
  uart_send(uart_recv());
 }
}
