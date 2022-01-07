
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int hue; int val; int sat; } ;


 int RGBLIGHT_HUE_STEP ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv (int,int ,int ) ;

void rgblight_decrease_hue(void) {
  uint16_t hue;
  if (rgblight_config.hue-RGBLIGHT_HUE_STEP < 0) {
    hue = (rgblight_config.hue + 360 - RGBLIGHT_HUE_STEP) % 360;
  } else {
    hue = (rgblight_config.hue - RGBLIGHT_HUE_STEP) % 360;
  }
  rgblight_sethsv(hue, rgblight_config.sat, rgblight_config.val);
}
