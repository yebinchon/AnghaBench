
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3736_mono_set_brightness (int,int) ;
 int g_tick ;
 int rand () ;

void backlight_effect_raindrops(bool initialize)
{

    uint8_t led_to_change = ( g_tick & 0x000 ) == 0 ? rand() % 96 : 255;

    for ( int i=0; i<96; i++ )
    {


        if ( initialize || i == led_to_change )
        {
            IS31FL3736_mono_set_brightness(i, rand() & 0xFF );
        }
    }
}
