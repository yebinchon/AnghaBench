
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ uart_rx_any () ;
 int uart_rx_char () ;

int mp_hal_stdin_rx_chr(void) {
    for (;;) {
        if (uart_rx_any()) {
            return uart_rx_char();
        }
    }
}
