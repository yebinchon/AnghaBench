
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lpc_console ;
 int lpc_uart_init () ;
 int potato_console ;
 int potato_uart_init () ;

void uart_init_ppc(int lpc) {
    lpc_console = lpc;

    if (!lpc_console) {
        potato_console = 1;

        potato_uart_init();
    } else {
        lpc_uart_init();
    }
}
