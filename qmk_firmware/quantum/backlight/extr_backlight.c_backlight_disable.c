
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int raw; } ;


 TYPE_1__ backlight_config ;
 int backlight_set (int ) ;
 int dprintf (char*) ;
 int eeconfig_update_backlight (int ) ;

void backlight_disable(void) {
    if (!backlight_config.enable) return;

    backlight_config.enable = 0;
    eeconfig_update_backlight(backlight_config.raw);
    dprintf("backlight disable\n");
    backlight_set(0);
}
