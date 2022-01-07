
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
struct TYPE_4__ {TYPE_1__ color_2; } ;


 int backlight_config_save () ;
 TYPE_2__ g_config ;
 int increment (int ,int,int ,int) ;

void backlight_color_2_sat_increase(void)
{
    g_config.color_2.s = increment( g_config.color_2.s, 8, 0, 255 );
    backlight_config_save();
}
