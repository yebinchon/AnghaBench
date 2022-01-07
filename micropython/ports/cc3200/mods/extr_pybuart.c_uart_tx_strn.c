
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int pyb_uart_obj_t ;


 int uart_tx_char (int *,char const) ;

bool uart_tx_strn(pyb_uart_obj_t *self, const char *str, uint len) {
    for (const char *top = str + len; str < top; str++) {
        if (!uart_tx_char(self, *str)) {
            return 0;
        }
    }
    return 1;
}
