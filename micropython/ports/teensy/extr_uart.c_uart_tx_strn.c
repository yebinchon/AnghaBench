
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint ;
struct TYPE_3__ {int uart; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 int HAL_UART_Transmit (int *,int *,int ,int) ;

void uart_tx_strn(pyb_uart_obj_t *uart_obj, const char *str, uint len) {



}
