
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; scalar_t__ enable; int raw; } ;


 int RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_set () ;
 int rgblight_timer_disable () ;

void rgblight_update_dword(uint32_t dword) {
    RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS;
    rgblight_config.raw = dword;
    if (rgblight_config.enable)
        rgblight_mode_noeeprom(rgblight_config.mode);
    else {



        rgblight_set();
    }
}
