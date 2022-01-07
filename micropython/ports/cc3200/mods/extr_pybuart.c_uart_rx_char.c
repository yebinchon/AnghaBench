
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t read_buf_tail; size_t read_buf_head; int* read_buf; int reg; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 int MAP_UARTCharGetNonBlocking (int ) ;
 int PYBUART_RX_BUFFER_LEN ;

int uart_rx_char(pyb_uart_obj_t *self) {
    if (self->read_buf_tail != self->read_buf_head) {

        int data = self->read_buf[self->read_buf_tail];
        self->read_buf_tail = (self->read_buf_tail + 1) % PYBUART_RX_BUFFER_LEN;
        return data;
    } else {

        return MAP_UARTCharGetNonBlocking(self->reg);
    }
}
