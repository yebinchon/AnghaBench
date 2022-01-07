
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_RBR ;
 int lpc_uart_reg_write (int ,char) ;
 scalar_t__ lpc_uart_tx_full () ;

void lpc_uart_write(char c) {
    while (lpc_uart_tx_full());
    lpc_uart_reg_write(REG_RBR, c);
}
