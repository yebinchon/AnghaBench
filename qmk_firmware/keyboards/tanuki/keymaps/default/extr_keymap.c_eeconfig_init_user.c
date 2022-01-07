
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layer_rgb; scalar_t__ raw; } ;


 int eeconfig_update_user (scalar_t__) ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int ,int,int) ;
 TYPE_1__ user_config ;

void eeconfig_init_user(void) {
    user_config.raw = 0;
    user_config.layer_rgb = 1;
    eeconfig_update_user(user_config.raw);
    rgblight_enable();
    rgblight_sethsv(0,10,255);
    rgblight_mode(1);
}
