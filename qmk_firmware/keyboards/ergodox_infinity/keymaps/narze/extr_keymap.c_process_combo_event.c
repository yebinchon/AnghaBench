
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int MOD_BIT (int ) ;
 int _SUPERDUPER ;
 int ergodox_board_led_off () ;
 int ergodox_board_led_on () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int unregister_mods (int) ;

void process_combo_event(uint8_t combo_index, bool pressed) {
    if (pressed) {
        switch(combo_index) {
            case 128:
                layer_on(_SUPERDUPER);
                ergodox_board_led_on();
                break;
        }
    } else {
        layer_off(_SUPERDUPER);
        ergodox_board_led_off();
        unregister_mods(MOD_BIT(KC_LGUI) | MOD_BIT(KC_LCTL) | MOD_BIT(KC_LALT));
    }
}
