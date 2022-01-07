
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_ARRAY_SIZE (int ) ;
 int MP_STATE_PORT (int ) ;
 int pyb_uart_obj_all ;

bool uart_exists(int uart_id) {
    if (uart_id > MP_ARRAY_SIZE(MP_STATE_PORT(pyb_uart_obj_all))) {

        return 0;
    }
    switch (uart_id) {
        default: return 0;
    }
}
