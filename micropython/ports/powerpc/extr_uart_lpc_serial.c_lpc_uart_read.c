
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_THR ;
 char lpc_uart_reg_read (int ) ;
 scalar_t__ lpc_uart_rx_empty () ;

char lpc_uart_read(void) {
    while (lpc_uart_rx_empty()) ;
    return lpc_uart_reg_read(REG_THR);
}
