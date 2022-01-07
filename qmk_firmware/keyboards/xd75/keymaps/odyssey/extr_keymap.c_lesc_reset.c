
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int KC_ESC ;



 int _FN ;
 int layer_off (int ) ;
 int register_code16 (int ) ;
 int sstate ;
 int td_state ;
 int unregister_code16 (int ) ;
 int update_led_state_c () ;

void lesc_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (td_state) {
    case 128:
      unregister_code16(KC_ESC);
      break;
    case 129:
      layer_off(_FN);
      if (sstate == 0) {
        register_code16(KC_ESC);
        unregister_code16(KC_ESC);
      }
      break;
    case 131:
      break;
    case 130:
      break;
  }
  td_state = 130;
  update_led_state_c();
}
