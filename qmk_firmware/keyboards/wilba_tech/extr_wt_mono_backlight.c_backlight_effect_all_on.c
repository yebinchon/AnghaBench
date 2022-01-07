
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;


 int IS31FL3736_mono_set_brightness_all (int ) ;
 TYPE_1__ g_config ;

void backlight_effect_all_on(void)
{
 IS31FL3736_mono_set_brightness_all( g_config.brightness );
}
