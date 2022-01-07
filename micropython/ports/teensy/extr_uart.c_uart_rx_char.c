
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int uart; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 scalar_t__ HAL_OK ;
 scalar_t__ HAL_UART_Receive (int *,int*,int,int ) ;

int uart_rx_char(pyb_uart_obj_t *uart_obj) {
    uint8_t ch;





    ch = 'A';

    return ch;
}
