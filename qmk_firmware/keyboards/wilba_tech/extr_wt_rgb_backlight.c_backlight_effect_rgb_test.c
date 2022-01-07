
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_set_color_all (int,int,int) ;
 int g_tick ;

void backlight_effect_rgb_test(void)
{


    switch ( (g_tick & 0x30) >> 4 )
    {
        case 0:
        {
            backlight_set_color_all( 255, 0, 0 );
            break;
        }
        case 1:
        {
            backlight_set_color_all( 0, 255, 0 );
            break;
        }
        case 2:
        {
            backlight_set_color_all( 0, 0, 255 );
            break;
        }
        case 3:
        {
            backlight_set_color_all( 255, 255, 255 );
            break;
        }
    }
}
