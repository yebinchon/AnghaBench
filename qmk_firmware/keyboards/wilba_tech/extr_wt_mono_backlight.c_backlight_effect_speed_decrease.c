
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int effect_speed; } ;


 int backlight_config_save () ;
 int decrement (int ,int,int ,int) ;
 TYPE_1__ g_config ;

void backlight_effect_speed_decrease(void)
{
    g_config.effect_speed = decrement( g_config.effect_speed, 1, 0, 3 );
    backlight_config_save();
}
