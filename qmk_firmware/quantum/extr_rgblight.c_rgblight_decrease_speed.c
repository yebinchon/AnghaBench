
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ speed; int raw; } ;


 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;

void rgblight_decrease_speed(void) {
    if (rgblight_config.speed > 0) rgblight_config.speed--;

    eeconfig_update_rgblight(rgblight_config.raw);
}
