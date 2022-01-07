
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; scalar_t__ enable; int raw; } ;


 scalar_t__ BACKLIGHT_LEVELS ;
 TYPE_1__ backlight_config ;
 int backlight_set (scalar_t__) ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_backlight () ;

void backlight_init(void) {

    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    backlight_config.raw = eeconfig_read_backlight();
    if (backlight_config.level > BACKLIGHT_LEVELS) {
        backlight_config.level = BACKLIGHT_LEVELS;
    }
    backlight_set(backlight_config.enable ? backlight_config.level : 0);
}
