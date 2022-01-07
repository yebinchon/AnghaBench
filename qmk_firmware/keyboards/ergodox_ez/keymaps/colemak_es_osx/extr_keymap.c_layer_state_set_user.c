
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IDEA ;
 scalar_t__ layer_state_cmp (int ,int ) ;
 int led_1_off () ;
 int led_1_on () ;
 int led_3_off () ;
 int led_3_on () ;

uint32_t layer_state_set_user(uint32_t state) {

    if(layer_state_cmp(state ,IDEA)) {
        led_1_on();
        led_3_on();
    } else {
        led_1_off();
        led_3_off();
    }

  return state;
}
