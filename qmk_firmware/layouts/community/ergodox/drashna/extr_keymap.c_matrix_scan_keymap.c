
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MOD_MASK_ALT ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_SHIFT ;
 int USB_LED_CAPS_LOCK ;
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
 int skip_leds ;

void matrix_scan_keymap(void) {
    uint8_t modifiers = get_mods();
    uint8_t led_usb_state = host_keyboard_leds();
    uint8_t one_shot = get_oneshot_mods();

    if (!skip_leds) {
        ergodox_board_led_off();
        ergodox_right_led_1_off();
        ergodox_right_led_2_off();
        ergodox_right_led_3_off();




        if ((modifiers | one_shot) & MOD_MASK_SHIFT || led_usb_state & (1 << USB_LED_CAPS_LOCK)) {
            ergodox_right_led_2_on();
            ergodox_right_led_2_set(50);
        }
        if ((modifiers | one_shot) & MOD_MASK_CTRL) {
            ergodox_right_led_1_on();
            ergodox_right_led_1_set(10);
        }
        if ((modifiers | one_shot) & MOD_MASK_ALT) {
            ergodox_right_led_3_on();
            ergodox_right_led_3_set(10);
        }
    }
}
