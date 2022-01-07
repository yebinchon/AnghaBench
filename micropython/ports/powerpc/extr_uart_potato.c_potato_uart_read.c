
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int POTATO_CONSOLE_RX ;
 int potato_uart_reg_read (int ) ;
 scalar_t__ potato_uart_rx_empty () ;

char potato_uart_read(void) {
    uint64_t val;

    while (potato_uart_rx_empty());
    val = potato_uart_reg_read(POTATO_CONSOLE_RX);

    return (char)(val & 0x000000ff);
}
