
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int pyb_uart_obj_t ;


 int * MP_STATE_PORT (int ) ;
 int pyb_stdio_uart ;
 scalar_t__ usb_vcp_is_enabled () ;
 int usb_vcp_send_strn_cooked (char const*,size_t) ;

void mp_hal_stdout_tx_strn_cooked(const char *str, size_t len) {

    if (MP_STATE_PORT(pyb_stdio_uart) != ((void*)0)) {
        void uart_tx_strn_cooked(pyb_uart_obj_t *uart_obj, const char *str, uint len);
        uart_tx_strn_cooked(MP_STATE_PORT(pyb_stdio_uart), str, len);
    }
    if (usb_vcp_is_enabled()) {
        usb_vcp_send_strn_cooked(str, len);
    }
}
