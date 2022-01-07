
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;


 int * MP_STATE_PORT (int ) ;
 int board_stdio_uart ;
 int uart_tx_strn (int *,char const*,int ) ;

void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len) {
    if (MP_STATE_PORT(board_stdio_uart) != ((void*)0)) {
        uart_tx_strn(MP_STATE_PORT(board_stdio_uart), str, len);
    }
}
