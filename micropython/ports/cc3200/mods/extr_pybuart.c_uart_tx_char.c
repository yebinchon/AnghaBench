
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int baudrate; int reg; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 int MAP_UARTCharPutNonBlocking (int ,int) ;
 int PYBUART_TX_MAX_TIMEOUT_MS ;
 int PYBUART_TX_WAIT_US (int ) ;
 int UTILS_DELAY_US_TO_COUNT (int) ;
 int UtilsDelay (int ) ;

bool uart_tx_char(pyb_uart_obj_t *self, int c) {
    uint32_t timeout = 0;
    while (!MAP_UARTCharPutNonBlocking(self->reg, c)) {
        if (timeout++ > ((PYBUART_TX_MAX_TIMEOUT_MS * 1000) / PYBUART_TX_WAIT_US(self->baudrate))) {
            return 0;
        }
        UtilsDelay(UTILS_DELAY_US_TO_COUNT(PYBUART_TX_WAIT_US(self->baudrate)));
    }
    return 1;
}
