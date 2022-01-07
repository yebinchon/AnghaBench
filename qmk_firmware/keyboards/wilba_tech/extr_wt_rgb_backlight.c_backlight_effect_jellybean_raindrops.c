
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int brightness; } ;
struct TYPE_7__ {int h; int s; int v; } ;
struct TYPE_6__ {int b; int g; int r; } ;
typedef TYPE_1__ RGB ;
typedef TYPE_2__ HSV ;


 int BACKLIGHT_LED_COUNT ;
 int backlight_set_color (int,int ,int ,int ) ;
 TYPE_5__ g_config ;
 int g_tick ;
 TYPE_1__ hsv_to_rgb (TYPE_2__) ;
 int rand () ;

void backlight_effect_jellybean_raindrops( bool initialize )
{
    HSV hsv;
    RGB rgb;


    uint8_t led_to_change = ( g_tick & 0x000 ) == 0 ? rand() % BACKLIGHT_LED_COUNT : 255;

    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {


        if ( initialize || i == led_to_change )
        {
            hsv.h = rand() & 0xFF;
            hsv.s = rand() & 0xFF;

            hsv.v = g_config.brightness;;

            rgb = hsv_to_rgb( hsv );
            backlight_set_color( i, rgb.r, rgb.g, rgb.b );
        }
    }
}
