
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS31FL3736_mono_set_brightness_all (int ) ;

void backlight_effect_all_off(void)
{
 IS31FL3736_mono_set_brightness_all( 0 );
}
