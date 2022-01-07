
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pyb_switch_obj_t ;
typedef int mp_print_t ;
typedef int mp_print_kind_t ;
typedef int * mp_obj_t ;


 int SWITCH_ID (int *) ;
 int mp_printf (int const*,char*,int ) ;

void pyb_switch_print(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    pyb_switch_obj_t *self = self_in;
    mp_printf(print, "Switch(%u)", SWITCH_ID(self));
}
