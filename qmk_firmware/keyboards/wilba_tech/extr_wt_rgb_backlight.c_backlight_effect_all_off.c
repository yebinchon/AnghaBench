
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_set_color_all (int ,int ,int ) ;

void backlight_effect_all_off(void)
{
    backlight_set_color_all( 0, 0, 0 );
}
