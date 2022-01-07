
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int POTATO_CONSOLE_STATUS ;
 int POTATO_CONSOLE_STATUS_RX_EMPTY ;
 int potato_uart_reg_read (int ) ;

__attribute__((used)) static int potato_uart_rx_empty(void) {
    uint64_t val;

    val = potato_uart_reg_read(POTATO_CONSOLE_STATUS);

    if (val & POTATO_CONSOLE_STATUS_RX_EMPTY) {
        return 1;
    }

    return 0;
}
