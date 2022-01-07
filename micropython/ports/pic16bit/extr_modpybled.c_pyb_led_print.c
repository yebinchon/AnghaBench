
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pyb_led_obj_t ;
typedef int mp_print_t ;
typedef int mp_print_kind_t ;
typedef int * mp_obj_t ;


 int LED_ID (int *) ;
 int mp_printf (int const*,char*,int ) ;

void pyb_led_print(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    pyb_led_obj_t *self = self_in;
    mp_printf(print, "LED(%u)", LED_ID(self));
}
