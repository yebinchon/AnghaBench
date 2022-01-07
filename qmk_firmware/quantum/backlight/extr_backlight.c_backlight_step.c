
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; int enable; int raw; } ;


 scalar_t__ BACKLIGHT_LEVELS ;
 TYPE_1__ backlight_config ;
 int backlight_set (scalar_t__) ;
 int dprintf (char*,scalar_t__) ;
 int eeconfig_update_backlight (int ) ;

void backlight_step(void) {
    backlight_config.level++;
    if (backlight_config.level > BACKLIGHT_LEVELS) {
        backlight_config.level = 0;
    }
    backlight_config.enable = !!backlight_config.level;
    eeconfig_update_backlight(backlight_config.raw);
    dprintf("backlight step: %u\n", backlight_config.level);
    backlight_set(backlight_config.level);
}
