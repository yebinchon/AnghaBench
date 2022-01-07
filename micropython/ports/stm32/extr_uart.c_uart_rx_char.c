
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {size_t read_buf_tail; size_t read_buf_head; scalar_t__ char_width; int* read_buf; int read_buf_len; int char_mask; TYPE_3__* uartx; } ;
typedef TYPE_1__ pyb_uart_obj_t ;
struct TYPE_6__ {int RDR; int DR; int ICR; } ;


 scalar_t__ CHAR_WIDTH_9BIT ;
 scalar_t__ UART_RXNE_IS_SET (TYPE_3__*) ;
 int UART_RXNE_IT_EN (TYPE_3__*) ;
 int USART_ICR_ORECF ;

int uart_rx_char(pyb_uart_obj_t *self) {
    if (self->read_buf_tail != self->read_buf_head) {

        int data;
        if (self->char_width == CHAR_WIDTH_9BIT) {
            data = ((uint16_t*)self->read_buf)[self->read_buf_tail];
        } else {
            data = self->read_buf[self->read_buf_tail];
        }
        self->read_buf_tail = (self->read_buf_tail + 1) % self->read_buf_len;
        if (UART_RXNE_IS_SET(self->uartx)) {

            UART_RXNE_IT_EN(self->uartx);
        }
        return data;
    } else {






        return self->uartx->DR & self->char_mask;

    }
}
