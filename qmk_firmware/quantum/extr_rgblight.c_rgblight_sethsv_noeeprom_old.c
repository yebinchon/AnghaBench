
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ enable; } ;
struct TYPE_4__ {int b; int g; int r; } ;
typedef TYPE_1__ LED_TYPE ;


 TYPE_3__ rgblight_config ;
 int rgblight_setrgb (int ,int ,int ) ;
 int sethsv (int ,int ,int ,TYPE_1__*) ;

void rgblight_sethsv_noeeprom_old(uint8_t hue, uint8_t sat, uint8_t val) {
    if (rgblight_config.enable) {
        LED_TYPE tmp_led;
        sethsv(hue, sat, val, &tmp_led);
        rgblight_setrgb(tmp_led.r, tmp_led.g, tmp_led.b);
    }
}
