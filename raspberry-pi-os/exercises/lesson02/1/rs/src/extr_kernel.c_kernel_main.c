
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int init_printf (int ,int ) ;
 int printf (char*,int) ;
 int putc ;
 int uart_init () ;
 int uart_recv () ;
 int uart_send (int ) ;

void kernel_main(void) {
  uart_init();
  init_printf(0, putc);
  int el = get_el();
  printf("Exception level: %d \r\n", el);

  while (1) {
    uart_send(uart_recv());
  }
}
