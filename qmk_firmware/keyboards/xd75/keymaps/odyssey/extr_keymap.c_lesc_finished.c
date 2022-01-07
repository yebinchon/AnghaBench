
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int KC_ESC ;



 int _FN ;
 int cur_dance (int *) ;
 int layer_on (int ) ;
 int register_code16 (int ) ;
 int sstate ;
 int td_state ;
 int update_led_state_c () ;

void lesc_finished (qk_tap_dance_state_t *state, void *user_data) {
  td_state = cur_dance(state);
  switch (td_state) {
    case 128:
      register_code16(KC_ESC);
      break;
    case 129:
      layer_on(_FN);
      update_led_state_c();
      sstate = 0;
      break;
    case 131:
      break;
    case 130:
      break;
  }
}
