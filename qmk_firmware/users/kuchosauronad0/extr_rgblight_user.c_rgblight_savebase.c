
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int val; int sat; int hue; } ;


 int base_hue ;
 int base_mod ;
 int base_sat ;
 int base_val ;
 TYPE_1__ rgblight_config ;

void rgblight_savebase(void) {
  base_hue = rgblight_config.hue;
  base_sat = rgblight_config.sat;
  base_val = rgblight_config.val;
  base_mod = rgblight_config.mode;
}
