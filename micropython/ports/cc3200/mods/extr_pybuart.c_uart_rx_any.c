
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ read_buf_tail; scalar_t__ read_buf_head; int reg; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 scalar_t__ MAP_UARTCharsAvail (int ) ;
 int PYBUART_RX_BUFFER_LEN ;

uint32_t uart_rx_any(pyb_uart_obj_t *self) {
    if (self->read_buf_tail != self->read_buf_head) {

        return (self->read_buf_head > self->read_buf_tail) ? self->read_buf_head - self->read_buf_tail :
                PYBUART_RX_BUFFER_LEN - self->read_buf_tail + self->read_buf_head;
    }
    return MAP_UARTCharsAvail(self->reg) ? 1 : 0;
}
