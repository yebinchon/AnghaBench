
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ RGBLIGHT_MODES ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode (scalar_t__) ;

void rgblight_increase(void) {
  uint8_t mode = 0;
  if (rgblight_config.mode < RGBLIGHT_MODES) {
    mode = rgblight_config.mode + 1;
  }
  rgblight_mode(mode);
}
