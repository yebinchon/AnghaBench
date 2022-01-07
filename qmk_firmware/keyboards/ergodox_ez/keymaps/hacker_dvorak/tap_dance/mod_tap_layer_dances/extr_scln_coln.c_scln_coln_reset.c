
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_COLN ;
 int KC_LALT ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_SCLN ;


 TYPE_1__ scln_coln_state ;
 int unregister_code (int ) ;
 int unregister_code16 (int ) ;

void scln_coln_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (scln_coln_state.state) {
        case 128:
            unregister_code(KC_SCLN);
            break;

        case 129:
            unregister_code(KC_LALT);
            unregister_code(KC_LSFT);
            unregister_code(KC_LGUI);
            break;

        case 130:
            unregister_code16(KC_COLN);
            break;
    }
    scln_coln_state.state = 0;
}
