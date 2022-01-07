
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ val; int sat; int hue; } ;


 scalar_t__ RGBLIGHT_LIMIT_VAL ;
 scalar_t__ RGBLIGHT_VAL_STEP ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv (int ,int ,scalar_t__) ;

void rgblight_increase_val(void) {
  uint8_t val;
  if (rgblight_config.val + RGBLIGHT_VAL_STEP > RGBLIGHT_LIMIT_VAL) {
    val = RGBLIGHT_LIMIT_VAL;
  } else {
    val = rgblight_config.val + RGBLIGHT_VAL_STEP;
  }
  rgblight_sethsv(rgblight_config.hue, rgblight_config.sat, val);
}
