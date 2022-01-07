
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int KC_LALT ;
 int KC_LCTRL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int MOD_MASK_ALT ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_GUI ;
 int MOD_MASK_SHIFT ;
 int get_mods () ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void tap_with_modifiers(uint16_t keycode, uint8_t force_modifiers) {
  uint8_t active_modifiers = get_mods();

  if ((force_modifiers & MOD_MASK_SHIFT) && !(active_modifiers & MOD_MASK_SHIFT)) register_code(KC_LSFT);
  if ((force_modifiers & MOD_MASK_CTRL) && !(active_modifiers & MOD_MASK_CTRL)) register_code(KC_LCTRL);
  if ((force_modifiers & MOD_MASK_ALT) && !(active_modifiers & MOD_MASK_ALT)) register_code(KC_LALT);
  if ((force_modifiers & MOD_MASK_GUI) && !(active_modifiers & MOD_MASK_GUI)) register_code(KC_LGUI);

  register_code(keycode);
  unregister_code(keycode);

  if ((force_modifiers & MOD_MASK_SHIFT) && !(active_modifiers & MOD_MASK_SHIFT)) unregister_code(KC_LSFT);
  if ((force_modifiers & MOD_MASK_CTRL) && !(active_modifiers & MOD_MASK_CTRL)) unregister_code(KC_LCTRL);
  if ((force_modifiers & MOD_MASK_ALT) && !(active_modifiers & MOD_MASK_ALT)) unregister_code(KC_LALT);
  if ((force_modifiers & MOD_MASK_GUI) && !(active_modifiers & MOD_MASK_GUI)) unregister_code(KC_LGUI);
}
