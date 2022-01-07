
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int KC_0 ;
 int KC_1 ;
 int MOD_MASK_ALT ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_GUI ;
 int MOD_MASK_SHIFT ;
 int clear_mods () ;
 int ** encoder_actions ;
 int get_mods () ;
 int set_mods (int) ;
 int tap_code (int ) ;
 int tap_code16 (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
  static uint16_t kc;
  uint8_t temp_mod = get_mods();
  if (index == 0) {
    if (clockwise) {

        if ((temp_mod & MOD_MASK_CTRL) && (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_ALT) && (temp_mod & MOD_MASK_GUI)) {
          kc = encoder_actions[0][8];
        } else if ( (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_ALT) ) {
          kc = encoder_actions[0][7];
        } else if ( (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_CTRL) ) {
          kc = encoder_actions[0][6];
        } else if ( (temp_mod & MOD_MASK_CTRL) && (temp_mod & MOD_MASK_ALT) ) {
          kc = encoder_actions[0][5];
        } else if (temp_mod & MOD_MASK_GUI) {
          kc = encoder_actions[0][4];
        } else if (temp_mod & MOD_MASK_SHIFT) {
          kc = encoder_actions[0][3];
        } else if (temp_mod & MOD_MASK_ALT) {
          kc = encoder_actions[0][2];
        } else if (temp_mod & MOD_MASK_CTRL) {
          kc = encoder_actions[0][1];
        } else {
          kc = encoder_actions[0][0];
        }
      } else {
        if ((temp_mod & MOD_MASK_CTRL) && (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_ALT) && (temp_mod & MOD_MASK_GUI)) {
          kc = encoder_actions[1][8];
        } else if ( (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_ALT) ) {
          kc = encoder_actions[1][7];
        } else if ( (temp_mod & MOD_MASK_SHIFT) && (temp_mod & MOD_MASK_CTRL) ) {
          kc = encoder_actions[1][6];
        } else if ( (temp_mod & MOD_MASK_CTRL) && (temp_mod & MOD_MASK_ALT) ) {
          kc = encoder_actions[1][5];
        } else if (temp_mod & MOD_MASK_GUI) {
          kc = encoder_actions[1][4];
        } else if (temp_mod & MOD_MASK_SHIFT) {
          kc = encoder_actions[1][3];
        } else if (temp_mod & MOD_MASK_ALT) {
          kc = encoder_actions[1][2];
        } else if (temp_mod & MOD_MASK_CTRL) {
          kc = encoder_actions[1][1];
        } else {
          kc = encoder_actions[1][0];
        }
      }
        clear_mods();
        tap_code16(kc);
        set_mods(temp_mod);
  } else if (index == 1){
      if (clockwise) {
        tap_code(KC_0);
      } else{
        tap_code(KC_1);
      }
  }
}
