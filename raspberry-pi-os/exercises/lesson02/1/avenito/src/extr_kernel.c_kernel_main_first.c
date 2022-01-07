
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int init_printf (int ,int ) ;
 int printf (char*,int) ;
 int putc ;
 int uart_init () ;

void kernel_main_first(void)
{
 uart_init();
 init_printf(0, putc);
 int el = get_el();
 printf("1.Exception level: %d \r\n", el);
 return;
}
