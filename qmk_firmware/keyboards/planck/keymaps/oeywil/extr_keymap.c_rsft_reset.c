
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


 int unregister_code (int ) ;
 int unregister_code16 (int ) ;
 TYPE_1__ xtap_state ;

void rsft_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (xtap_state.state) {
    case 128:
      unregister_code16(LSFT(KC_9));
      break;
    case 129:
      unregister_code(KC_RSFT);
      break;
    case 130:
      unregister_code16(LSFT(KC_NUBS));
      break;
    case 131:
      unregister_code16(LSFT(KC_NUBS));
      break;
  }
  xtap_state.state = 0;
}
