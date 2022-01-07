
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint64_t ;


 int POTATO_CONSOLE_TX ;
 int potato_uart_reg_write (int ,char) ;
 scalar_t__ potato_uart_tx_full () ;

void potato_uart_write(char c) {
    uint64_t val;

    val = c;

    while (potato_uart_tx_full());
    potato_uart_reg_write(POTATO_CONSOLE_TX, val);
}
