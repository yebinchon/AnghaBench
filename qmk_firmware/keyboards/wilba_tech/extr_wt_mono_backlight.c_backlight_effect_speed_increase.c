
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int effect_speed; } ;


 int backlight_config_save () ;
 TYPE_1__ g_config ;
 int increment (int ,int,int ,int) ;

void backlight_effect_speed_increase(void)
{
    g_config.effect_speed = increment( g_config.effect_speed, 1, 0, 3 );
    backlight_config_save();
}
