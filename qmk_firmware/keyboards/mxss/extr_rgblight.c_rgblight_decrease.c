
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 TYPE_1__ rgblight_config ;
 int rgblight_mode (int) ;

void rgblight_decrease(void) {
  uint8_t mode = 0;

  if (rgblight_config.mode > 1) {
    mode = rgblight_config.mode - 1;
  }
  rgblight_mode(mode);
}
