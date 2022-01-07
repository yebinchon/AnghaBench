
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** MP_STATE_PORT (int ) ;
 int * pyb_uart_obj ;
 int pyb_uart_objs ;

void uart_init0 (void) {

    MP_STATE_PORT(pyb_uart_objs)[0] = &pyb_uart_obj[0];
    MP_STATE_PORT(pyb_uart_objs)[1] = &pyb_uart_obj[1];
}
