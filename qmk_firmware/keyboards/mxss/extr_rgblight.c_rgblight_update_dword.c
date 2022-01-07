
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; scalar_t__ enable; int raw; } ;


 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode (int ) ;
 int rgblight_set () ;
 int rgblight_timer_disable () ;

void rgblight_update_dword(uint32_t dword) {
  rgblight_config.raw = dword;
  eeconfig_update_rgblight(rgblight_config.raw);
  if (rgblight_config.enable)
    rgblight_mode(rgblight_config.mode);
  else {



      rgblight_set();
  }
}
