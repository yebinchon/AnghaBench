
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * MP_STATE_PORT (int ) ;
 int pyb_stdio_uart ;
 int uart_tx_strn (int *,char const*,size_t) ;
 scalar_t__ usb_vcp_is_enabled () ;
 int usb_vcp_send_strn (char const*,size_t) ;

void mp_hal_stdout_tx_strn(const char *str, size_t len) {
    if (MP_STATE_PORT(pyb_stdio_uart) != ((void*)0)) {
        uart_tx_strn(MP_STATE_PORT(pyb_stdio_uart), str, len);
    }
    if (usb_vcp_is_enabled()) {
        usb_vcp_send_strn(str, len);
    }
}
