
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int raw; scalar_t__ speed; int val; int sat; scalar_t__ hue; int mode; } ;


 int RGBLIGHT_LIMIT_VAL ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS ;
 int UINT8_MAX ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;

void eeconfig_update_rgblight_default(void) {
    rgblight_config.enable = 1;
    rgblight_config.mode = RGBLIGHT_MODE_STATIC_LIGHT;
    rgblight_config.hue = 0;
    rgblight_config.sat = UINT8_MAX;
    rgblight_config.val = RGBLIGHT_LIMIT_VAL;
    rgblight_config.speed = 0;
    RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS;
    eeconfig_update_rgblight(rgblight_config.raw);
}
