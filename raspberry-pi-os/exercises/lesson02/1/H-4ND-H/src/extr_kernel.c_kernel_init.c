
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_printf (int ,int ) ;
 int print_el () ;
 int putc ;
 int uart_init () ;

void kernel_init()
{
 uart_init();
 init_printf(0, putc);
 print_el();
}
