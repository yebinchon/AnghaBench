
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;


 int CHORD ;

 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_M ;


 int current_dance (int *) ;
 int layer_on (int ) ;
 TYPE_1__ m_chords_hyper_state ;
 int register_code (int ) ;

void m_chords_hyper_finished(qk_tap_dance_state_t *state, void *user_data) {
    m_chords_hyper_state.state = current_dance(state);
    switch (m_chords_hyper_state.state) {
        case 128:
            register_code(KC_M);
            break;

        case 129:
            layer_on(CHORD);
            break;

        case 130:
            register_code(KC_LCTL);
            register_code(KC_LSFT);
            register_code(KC_LALT);
            register_code(KC_LGUI);
            break;
    }
}
