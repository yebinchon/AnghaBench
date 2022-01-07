
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int effect_speed; } ;


 int backlight_set_brightness_all (int) ;
 TYPE_1__ g_config ;
 int g_tick ;

void backlight_effect_cycle_all(void)
{
 uint8_t offset = ( g_tick << g_config.effect_speed ) & 0xFF;

 backlight_set_brightness_all( offset );
}
