
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_K ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int NUMPAD ;


 TYPE_1__ k_numpad_hyper_state ;
 int layer_off (int ) ;
 int unregister_code (int ) ;

void k_numpad_hyper_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (k_numpad_hyper_state.state) {
        case 128:
            unregister_code(KC_K);
            break;

        case 129:
            layer_off(NUMPAD);
            break;

        case 130:
            unregister_code(KC_LCTL);
            unregister_code(KC_LSFT);
            unregister_code(KC_LALT);
            unregister_code(KC_LGUI);
            break;
    }
    k_numpad_hyper_state.state = 0;
}
