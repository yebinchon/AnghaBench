
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_VOLD ;
 int KC_VOLU ;
 int layer_off (int) ;
 int layer_on (int) ;
 int layer_state ;
 int tap_code (int ) ;
 int uprintf (char*,int) ;

void encoder_update_user(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (clockwise) {
            tap_code(KC_VOLD);
        } else {
            tap_code(KC_VOLU);
        }
    }
    else if (index == 1) {
        int mod = 0;
        if (clockwise) {
            mod = 1;
        } else {
            mod = -1;
        }
        int n = 2;
        int new_layer = ((layer_state + mod) % n + n) % n;
        uprintf("new: %d\n", new_layer);
        layer_on(new_layer);
        for(int i=0; i < n; i++) {
            if (new_layer != i) {
                layer_off(i);
            }
        }
    }
}
