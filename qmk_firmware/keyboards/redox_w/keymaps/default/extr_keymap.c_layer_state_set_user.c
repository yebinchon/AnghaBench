
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;






 int get_highest_layer (int ) ;
 int set_led_blue ;
 int set_led_green ;
 int set_led_off ;
 int set_led_red ;

layer_state_t layer_state_set_user(layer_state_t state) {
    switch (get_highest_layer(state)) {
        case 129:
            set_led_off;
            break;
        case 128:
            set_led_green;
            break;
        case 130:
            set_led_blue;
            break;
        case 131:
            set_led_red;
            break;
        default:
            break;
    }
  return state;
}
