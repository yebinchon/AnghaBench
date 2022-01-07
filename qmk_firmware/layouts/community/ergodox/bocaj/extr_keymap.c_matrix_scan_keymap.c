
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MODS_ALT_MASK ;
 int MODS_CTRL_MASK ;
 int MODS_GUI_MASK ;
 int MODS_SHIFT_MASK ;
 int USB_LED_CAPS_LOCK ;






 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_1_set (int) ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_2_set (int) ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int ergodox_right_led_3_set (int) ;
 int get_mods () ;
 int get_oneshot_mods () ;
 int host_keyboard_leds () ;
 int layer_state ;

void matrix_scan_keymap(void) {
  uint8_t modifiers = get_mods();
  uint8_t led_usb_state = host_keyboard_leds();
  uint8_t one_shot = get_oneshot_mods();
  uint8_t layer = biton32(layer_state);

  ergodox_board_led_off();
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();

  switch (layer) {
    case 128:
    case 130:
    case 129:
      if (modifiers & MODS_SHIFT_MASK || led_usb_state & (1<<USB_LED_CAPS_LOCK) || one_shot & MODS_SHIFT_MASK) {
        ergodox_right_led_1_on();
        ergodox_right_led_1_set( 25 );
      }
      if (modifiers & MODS_CTRL_MASK || one_shot & MODS_CTRL_MASK || modifiers & MODS_GUI_MASK || one_shot & MODS_GUI_MASK) {
        if ((modifiers & MODS_CTRL_MASK || one_shot & MODS_CTRL_MASK) && (modifiers & MODS_GUI_MASK || one_shot & MODS_GUI_MASK)) {
          ergodox_right_led_2_on();
          ergodox_right_led_2_set( 50 );
        } else {
          ergodox_right_led_2_on();
          ergodox_right_led_2_set( 10 );
        }
      }
      if (modifiers & MODS_ALT_MASK || one_shot & MODS_ALT_MASK) {
        ergodox_right_led_3_on();
        ergodox_right_led_3_set( 10 );
      }
      break;
    case 131:
      ergodox_right_led_3_on();
      ergodox_right_led_3_set(10);
      break;
    case 133:
      ergodox_right_led_2_on();
      ergodox_right_led_2_set(10);
      break;
    case 132:
      ergodox_right_led_1_on();
      ergodox_right_led_1_set(10);
      break;
    default:

      break;
  }
}
