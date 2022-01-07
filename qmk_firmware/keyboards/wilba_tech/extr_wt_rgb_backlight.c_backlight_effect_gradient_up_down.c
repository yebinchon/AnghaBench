
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_11__ {int h; int s; } ;
struct TYPE_10__ {int h; int s; } ;
struct TYPE_15__ {TYPE_2__ color_1; int brightness; TYPE_1__ color_2; } ;
struct TYPE_14__ {int h; int s; int v; } ;
struct TYPE_13__ {int y; } ;
struct TYPE_12__ {int b; int g; int r; } ;
typedef TYPE_3__ RGB ;
typedef TYPE_4__ Point ;
typedef TYPE_5__ HSV ;


 int BACKLIGHT_LED_COUNT ;
 int backlight_set_color (int,int ,int ,int ) ;
 TYPE_9__ g_config ;
 TYPE_3__ hsv_to_rgb (TYPE_5__) ;
 int map_led_to_point (int,TYPE_4__*) ;

void backlight_effect_gradient_up_down(void)
{
    int16_t h1 = g_config.color_1.h;
    int16_t h2 = g_config.color_2.h;
    int16_t deltaH = h2 - h1;


    if ( deltaH > 127 )
    {
        deltaH -= 256;
    }
    else if ( deltaH < -127 )
    {
        deltaH += 256;
    }

    deltaH /= 4;

    int16_t s1 = g_config.color_1.s;
    int16_t s2 = g_config.color_2.s;
    int16_t deltaS = ( s2 - s1 ) / 4;

    HSV hsv = { .h = 0, .s = 255, .v = g_config.brightness };
    RGB rgb;
    Point point;
    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        map_led_to_point( i, &point );

        uint8_t y = (point.y>>4);

        hsv.h = g_config.color_1.h + ( deltaH * y );
        hsv.s = g_config.color_1.s + ( deltaS * y );
        rgb = hsv_to_rgb( hsv );
        backlight_set_color( i, rgb.r, rgb.g, rgb.b );
    }
}
