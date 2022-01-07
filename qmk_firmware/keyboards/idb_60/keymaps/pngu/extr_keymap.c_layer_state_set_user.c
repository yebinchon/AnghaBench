
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int _idb_60_esc_led_off () ;
 int _idb_60_esc_led_on () ;
 scalar_t__ layer_state_cmp (int ,int) ;

layer_state_t layer_state_set_user(layer_state_t state) {
    if (layer_state_cmp(state, 1)) {
        _idb_60_esc_led_on();
    } else {
        _idb_60_esc_led_off();
    }

 return state;
}
