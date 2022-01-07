
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;


 scalar_t__ lpc_console ;
 int lpc_uart_write (char const) ;
 scalar_t__ potato_console ;
 int potato_uart_write (char const) ;

void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len) {
    if (lpc_console) {
        int i;
        for (i = 0; i < len; i++) {
            lpc_uart_write(str[i]);
        }
    } else if (potato_console) {
        int i;
        for (i = 0; i < len; i++) {
            potato_uart_write(str[i]);
        }
    }
}
