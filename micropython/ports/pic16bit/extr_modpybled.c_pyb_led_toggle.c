
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pyb_led_obj_t ;
typedef int * mp_obj_t ;


 int LED_ID (int *) ;
 int led_toggle (int ) ;
 int * mp_const_none ;

mp_obj_t pyb_led_toggle(mp_obj_t self_in) {
    pyb_led_obj_t *self = self_in;
    led_toggle(LED_ID(self));
    return mp_const_none;
}
