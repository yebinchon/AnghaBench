
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int s; scalar_t__ h; } ;
struct TYPE_13__ {int effect_speed; TYPE_1__ color_1; int brightness; } ;
struct TYPE_12__ {int s; scalar_t__ h; int v; } ;
struct TYPE_11__ {int x; int y; } ;
struct TYPE_10__ {int b; int g; int r; } ;
typedef TYPE_2__ RGB ;
typedef TYPE_3__ Point ;
typedef TYPE_4__ HSV ;


 int BACKLIGHT_LED_COUNT ;
 int backlight_set_color (int,int ,int ,int ) ;
 TYPE_8__ g_config ;
 int g_tick ;
 TYPE_2__ hsv_to_rgb (TYPE_4__) ;
 int map_led_to_point_polar (int,TYPE_3__*) ;

void backlight_effect_cycle_radial2(void)
{
    uint8_t offset = ( g_tick << g_config.effect_speed ) & 0xFF;

    HSV hsv = { .h = 0, .s = g_config.color_1.s, .v = g_config.brightness };
    RGB rgb;
    Point point;
    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        map_led_to_point_polar( i, &point );
        uint8_t offset2 = offset + point.x;
        if ( offset2 & 0x80 )
        {
            offset2 = ~offset2;
        }
        offset2 = offset2 >> 2;
        hsv.h = g_config.color_1.h + offset2;
        hsv.s = 127 + ( point.y >> 1 );
        rgb = hsv_to_rgb( hsv );
        backlight_set_color( i, rgb.r, rgb.g, rgb.b );
    }
}
