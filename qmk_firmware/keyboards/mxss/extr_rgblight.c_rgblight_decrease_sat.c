
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ sat; int val; int hue; } ;


 scalar_t__ RGBLIGHT_SAT_STEP ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv (int ,scalar_t__,int ) ;

void rgblight_decrease_sat(void) {
  uint8_t sat;
  if (rgblight_config.sat - RGBLIGHT_SAT_STEP < 0) {
    sat = 0;
  } else {
    sat = rgblight_config.sat - RGBLIGHT_SAT_STEP;
  }
  rgblight_sethsv(rgblight_config.hue, sat, rgblight_config.val);
}
