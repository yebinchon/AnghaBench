
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_static; } ;
typedef TYPE_1__ pyb_uart_obj_t ;


 int MP_ARRAY_SIZE (TYPE_1__**) ;
 TYPE_1__** MP_STATE_PORT (int ) ;
 int pyb_uart_obj_all ;
 int uart_deinit (TYPE_1__*) ;

void uart_deinit_all(void) {
    for (int i = 0; i < MP_ARRAY_SIZE(MP_STATE_PORT(pyb_uart_obj_all)); i++) {
        pyb_uart_obj_t *uart_obj = MP_STATE_PORT(pyb_uart_obj_all)[i];
        if (uart_obj != ((void*)0) && !uart_obj->is_static) {
            uart_deinit(uart_obj);
            MP_STATE_PORT(pyb_uart_obj_all)[i] = ((void*)0);
        }
    }
}
