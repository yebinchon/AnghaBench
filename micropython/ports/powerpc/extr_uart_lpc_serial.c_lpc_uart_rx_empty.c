
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR_DR ;
 int REG_LSR ;
 int lpc_uart_reg_read (int ) ;

__attribute__((used)) static int lpc_uart_rx_empty(void) {
    return !(lpc_uart_reg_read(REG_LSR) & LSR_DR);
}
