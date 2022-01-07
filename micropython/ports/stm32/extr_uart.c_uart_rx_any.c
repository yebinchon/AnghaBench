
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_buf_head; int read_buf_tail; int read_buf_len; int uartx; } ;
typedef TYPE_1__ pyb_uart_obj_t ;
typedef int mp_uint_t ;


 scalar_t__ UART_RXNE_IS_SET (int ) ;

mp_uint_t uart_rx_any(pyb_uart_obj_t *self) {
    int buffer_bytes = self->read_buf_head - self->read_buf_tail;
    if (buffer_bytes < 0) {
        return buffer_bytes + self->read_buf_len;
    } else if (buffer_bytes > 0) {
        return buffer_bytes;
    } else {
        return UART_RXNE_IS_SET(self->uartx) != 0;
    }
}
