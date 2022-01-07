
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int * MP_STATE_PORT (int ) ;
 int __WFI () ;
 int pyb_stdio_uart ;
 scalar_t__ uart_rx_any (int *) ;
 int uart_rx_char (int *) ;
 scalar_t__ usb_vcp_recv_byte (int*) ;

int mp_hal_stdin_rx_chr(void) {
    for (;;) {
        byte c;
        if (usb_vcp_recv_byte(&c) != 0) {
            return c;
        } else if (MP_STATE_PORT(pyb_stdio_uart) != ((void*)0) && uart_rx_any(MP_STATE_PORT(pyb_stdio_uart))) {
            return uart_rx_char(MP_STATE_PORT(pyb_stdio_uart));
        }
        __WFI();
    }
}
