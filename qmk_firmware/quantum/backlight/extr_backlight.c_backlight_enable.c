
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int raw; int level; } ;


 TYPE_1__ backlight_config ;
 int backlight_set (int) ;
 int dprintf (char*) ;
 int eeconfig_update_backlight (int) ;

void backlight_enable(void) {
    if (backlight_config.enable) return;

    backlight_config.enable = 1;
    if (backlight_config.raw == 1)
        backlight_config.level = 1;
    eeconfig_update_backlight(backlight_config.raw);
    dprintf("backlight enable\n");
    backlight_set(backlight_config.level);
}
