
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; scalar_t__ val; } ;


 scalar_t__ RGBLIGHT_LIMIT_VAL ;
 scalar_t__ RGBLIGHT_MODES ;
 scalar_t__ RGBLIGHT_MODE_STATIC_LIGHT ;
 TYPE_1__ rgblight_config ;

void rgblight_check_config(void) {


    if (rgblight_config.mode < RGBLIGHT_MODE_STATIC_LIGHT) {
        rgblight_config.mode = RGBLIGHT_MODE_STATIC_LIGHT;
    } else if (rgblight_config.mode > RGBLIGHT_MODES) {
        rgblight_config.mode = RGBLIGHT_MODES;
    }

    if (rgblight_config.val > RGBLIGHT_LIMIT_VAL) {
        rgblight_config.val = RGBLIGHT_LIMIT_VAL;
    }
}
