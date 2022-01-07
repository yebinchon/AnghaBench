
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_type_t ;
typedef int mp_const_obj_t ;


 int * mp_obj_get_type (int ) ;
 int pyb_uart_type ;
 int pyb_usb_vcp_type ;

bool mp_uos_dupterm_is_builtin_stream(mp_const_obj_t stream) {
    mp_obj_type_t *type = mp_obj_get_type(stream);
    return type == &pyb_uart_type



        ;
}
