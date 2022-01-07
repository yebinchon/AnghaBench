
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rgb_layer_change; int raw; } ;


 int eeconfig_update_user (int ) ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv_cyan () ;
 TYPE_1__ user_config ;

void eeconfig_init_user(void) {
  rgblight_enable();
  rgblight_sethsv_cyan();
  rgblight_mode(1);
  user_config.rgb_layer_change = 1;
  eeconfig_update_user(user_config.raw);
}
