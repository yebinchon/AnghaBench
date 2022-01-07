
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int enable; } ;
struct TYPE_4__ {int b; int g; int r; } ;
typedef TYPE_1__ LED_TYPE ;


 TYPE_3__ rgblight_config ;
 int rgblight_setrgb_at (int ,int ,int ,int ) ;
 int sethsv (int ,int ,int ,TYPE_1__*) ;

void rgblight_sethsv_at(uint16_t hue, uint8_t sat, uint8_t val, uint8_t index) {
  if (!rgblight_config.enable) { return; }

  LED_TYPE tmp_led;
  sethsv(hue, sat, val, &tmp_led);
  rgblight_setrgb_at(tmp_led.r, tmp_led.g, tmp_led.b, index);
}
