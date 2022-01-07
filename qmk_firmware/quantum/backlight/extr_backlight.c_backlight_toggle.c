
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; } ;


 TYPE_1__ backlight_config ;
 int backlight_disable () ;
 int backlight_enable () ;
 int dprintf (char*,int) ;

void backlight_toggle(void) {
    bool enabled = backlight_config.enable;
    dprintf("backlight toggle: %u\n", enabled);
    if (enabled)
        backlight_disable();
    else
        backlight_enable();
}
