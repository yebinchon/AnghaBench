
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;


 int backlight_config_save () ;
 TYPE_1__ g_config ;
 int increment (int ,int,int ,int) ;

void backlight_brightness_increase(void)
{
    g_config.brightness = increment( g_config.brightness, 8, 0, 255 );
    backlight_config_save();
}
