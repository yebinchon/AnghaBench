
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {size_t mode; int val; int hue; int sat; int raw; scalar_t__ enable; } ;
struct TYPE_6__ {scalar_t__ base_mode; } ;
struct TYPE_5__ {int b; int g; int r; } ;
typedef TYPE_1__ LED_TYPE ;


 int* RGBLED_GRADIENT_RANGES ;
 scalar_t__ RGBLIGHT_MODE_BREATHING ;
 scalar_t__ RGBLIGHT_MODE_RAINBOW_MOOD ;
 scalar_t__ RGBLIGHT_MODE_RAINBOW_SWIRL ;
 scalar_t__ RGBLIGHT_MODE_STATIC_GRADIENT ;
 size_t RGBLIGHT_MODE_STATIC_LIGHT ;
 int RGBLIGHT_SPLIT_SET_CHANGE_HSVS ;
 int dprintf (char*,int,int,int,...) ;
 int eeconfig_update_rgblight (int ) ;
 int effect_num_leds ;
 int effect_start_pos ;
 int * led ;
 scalar_t__* mode_base_table ;
 int pgm_read_word (int*) ;
 TYPE_4__ rgblight_config ;
 int rgblight_set () ;
 int rgblight_setrgb (int ,int ,int ) ;
 TYPE_3__ rgblight_status ;
 int sethsv (int,int,int,TYPE_1__*) ;

void rgblight_sethsv_eeprom_helper(uint8_t hue, uint8_t sat, uint8_t val, bool write_to_eeprom) {
    if (rgblight_config.enable) {
        rgblight_status.base_mode = mode_base_table[rgblight_config.mode];
        if (rgblight_config.mode == RGBLIGHT_MODE_STATIC_LIGHT) {

            LED_TYPE tmp_led;
            sethsv(hue, sat, val, &tmp_led);
            rgblight_setrgb(tmp_led.r, tmp_led.g, tmp_led.b);
        } else {

            if (1 == 0) {
            }
        }





        rgblight_config.hue = hue;
        rgblight_config.sat = sat;
        rgblight_config.val = val;
        if (write_to_eeprom) {
            eeconfig_update_rgblight(rgblight_config.raw);
            dprintf("rgblight set hsv [EEPROM]: %u,%u,%u\n", rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
        } else {
            dprintf("rgblight set hsv [NOEEPROM]: %u,%u,%u\n", rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
        }
    }
}
