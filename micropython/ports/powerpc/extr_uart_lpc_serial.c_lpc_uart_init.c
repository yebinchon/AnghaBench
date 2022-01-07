
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LPC_UART_BASE ;
 int lpc_uart_base ;

void lpc_uart_init(void) {
    lpc_uart_base = LPC_UART_BASE;
}
