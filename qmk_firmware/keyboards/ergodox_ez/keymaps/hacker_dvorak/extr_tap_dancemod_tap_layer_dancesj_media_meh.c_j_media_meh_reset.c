
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_J ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LSFT ;
 int MEDIA_FN ;


 TYPE_1__ j_media_meh_state ;
 int layer_off (int ) ;
 int unregister_code (int ) ;

void j_media_meh_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (j_media_meh_state.state) {
        case 128:
            unregister_code(KC_J);
            break;

        case 129:
            layer_off(MEDIA_FN);
            break;

        case 130:
            unregister_code(KC_LCTL);
            unregister_code(KC_LSFT);
            unregister_code(KC_LALT);
            break;
    }
    j_media_meh_state.state = 0;
}
