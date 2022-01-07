
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pyb_led_obj_t ;
typedef int * mp_obj_t ;


 int LED_ID (int *) ;
 int led_state (int ,int ) ;
 int * mp_const_none ;

mp_obj_t pyb_led_off(mp_obj_t self_in) {
    pyb_led_obj_t *self = self_in;
    led_state(LED_ID(self), 0);
    return mp_const_none;
}
