
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT_MAX ;
 int console_irq_input_hook ;
 int k_sem_init (int *,int ,int ) ;
 int uart_console_in_debug_hook_install (int ) ;
 int uart_register_input (int *,int *,int *) ;
 int uart_sem ;

void zephyr_getchar_init(void) {
    k_sem_init(&uart_sem, 0, UINT_MAX);
    uart_console_in_debug_hook_install(console_irq_input_hook);

    uart_register_input(((void*)0), ((void*)0), ((void*)0));
}
