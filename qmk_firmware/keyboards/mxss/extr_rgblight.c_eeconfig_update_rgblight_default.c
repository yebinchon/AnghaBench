
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int mode; int sat; int raw; scalar_t__ speed; int val; scalar_t__ hue; } ;


 int RGBLIGHT_LIMIT_VAL ;
 int dprintf (char*) ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;

void eeconfig_update_rgblight_default(void) {
  dprintf("eeconfig_update_rgblight_default\n");
  rgblight_config.enable = 1;
  rgblight_config.mode = 1;
  rgblight_config.hue = 0;
  rgblight_config.sat = 255;
  rgblight_config.val = RGBLIGHT_LIMIT_VAL;
  rgblight_config.speed = 0;
  eeconfig_update_rgblight(rgblight_config.raw);
}
