
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int MOD_MASK_ALT ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_SHIFT ;
 int _COLEMAK ;
 int _NUMERIC ;
 int _leds_dirty ;
 int get_mods () ;
 scalar_t__ layer_state_is (int ) ;
 int rgblight_sethsv_eeprom_helper (int,int,int,int) ;

void modal_leds(void) {
    uint8_t mods = get_mods();
    uint16_t hue = 355;
    uint8_t saturation = 255;
    uint8_t value = 0;
    if (layer_state_is(_COLEMAK)) { hue -= 50; saturation -= 20; value += 20; };
    if (layer_state_is(_NUMERIC)) { value += 30; };
    if (mods & MOD_MASK_SHIFT) { saturation -= 20; value += 30; };
    if (mods & MOD_MASK_ALT) { hue -= 100; saturation -= 20; value += 30; };
    if (mods & MOD_MASK_CTRL) { hue -= 200; saturation -= 20; value += 30; };


    rgblight_sethsv_eeprom_helper(hue, saturation, value, 0);
    _leds_dirty = 0;
}
