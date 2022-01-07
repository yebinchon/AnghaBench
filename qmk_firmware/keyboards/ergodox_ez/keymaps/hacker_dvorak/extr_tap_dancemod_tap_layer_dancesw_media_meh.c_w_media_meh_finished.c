
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_LALT ;
 int KC_LCTL ;
 int KC_LSFT ;
 int KC_W ;
 int MEDIA_FN ;


 int current_dance (int *) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 TYPE_1__ w_media_meh_state ;

void w_media_meh_finished(qk_tap_dance_state_t *state, void *user_data) {
    w_media_meh_state.state = current_dance(state);
    switch (w_media_meh_state.state) {
        case 128:
            register_code(KC_W);
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
