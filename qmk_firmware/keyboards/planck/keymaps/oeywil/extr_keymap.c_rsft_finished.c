
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int KC_9 ;
 int KC_NUBS ;
 int KC_RSFT ;
 int LSFT (int ) ;


 int cur_dance (int *) ;
 int register_code (int ) ;
 int register_code16 (int ) ;
 TYPE_1__ xtap_state ;

void rsft_finished (qk_tap_dance_state_t *state, void *user_data) {
  xtap_state.state = cur_dance(state);
  switch (xtap_state.state) {
    case 128:
      register_code16(LSFT(KC_9));
      break;
    case 129:
      register_code(KC_RSFT);
      break;
    case 130:
      register_code16(LSFT(KC_NUBS));
      break;
    case 131:
      register_code16(LSFT(KC_NUBS));
      break;
  }
}
