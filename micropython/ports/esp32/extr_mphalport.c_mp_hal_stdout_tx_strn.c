
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MP_THREAD_GIL_ENTER () ;
 int MP_THREAD_GIL_EXIT () ;
 int mp_uos_dupterm_tx_strn (char const*,int) ;
 int uart_tx_one_char (char const) ;

void mp_hal_stdout_tx_strn(const char *str, uint32_t len) {

    bool release_gil = len > 20;
    if (release_gil) {
        MP_THREAD_GIL_EXIT();
    }
    for (uint32_t i = 0; i < len; ++i) {
        uart_tx_one_char(str[i]);
    }
    if (release_gil) {
        MP_THREAD_GIL_ENTER();
    }
    mp_uos_dupterm_tx_strn(str, len);
}
