
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


 int current_dance (int *) ;
 TYPE_1__ j_media_meh_state ;
 int layer_on (int ) ;
 int register_code (int ) ;

void j_media_meh_finished(qk_tap_dance_state_t *state, void *user_data) {
    j_media_meh_state.state = current_dance(state);
    switch (j_media_meh_state.state) {
        case 128:
            register_code(KC_J);
            break;

        case 129:
            layer_on(MEDIA_FN);
            break;

        case 130:
            register_code(KC_LCTL);
            register_code(KC_LSFT);
            register_code(KC_LALT);
            break;
    }
}
