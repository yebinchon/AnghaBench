
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; int speed; } ;


 int decrement (int ,int,int ,int) ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;

void rgblight_decrease_speed(void) {
    rgblight_config.speed = decrement( rgblight_config.speed, 1, 0, 3 );
    eeconfig_update_rgblight(rgblight_config.raw);
}
