
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * MP_STATE_PORT (int ) ;
 uintptr_t MP_STREAM_POLL_RD ;
 int board_stdio_uart ;
 scalar_t__ uart_rx_any (int *) ;

uintptr_t mp_hal_stdio_poll(uintptr_t poll_flags) {
    uintptr_t ret = 0;
    if ((poll_flags & MP_STREAM_POLL_RD) && MP_STATE_PORT(board_stdio_uart) != ((void*)0)
        && uart_rx_any(MP_STATE_PORT(board_stdio_uart))) {
        ret |= MP_STREAM_POLL_RD;
    }
    return ret;
}
