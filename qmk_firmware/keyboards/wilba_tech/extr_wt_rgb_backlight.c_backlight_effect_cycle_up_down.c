
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_11__ {int effect_speed; scalar_t__ use_7u_spacebar; int brightness; } ;
struct TYPE_10__ {int h; int s; int v; } ;
struct TYPE_9__ {int y; } ;
struct TYPE_8__ {int b; int g; int r; } ;
typedef TYPE_1__ RGB ;
typedef TYPE_2__ Point ;
typedef TYPE_3__ HSV ;


 int BACKLIGHT_LED_COUNT ;
 int backlight_set_color (int,int ,int ,int ) ;
 TYPE_7__ g_config ;
 int* g_key_hit ;
 int g_tick ;
 TYPE_1__ hsv_to_rgb (TYPE_3__) ;
 int map_led_to_point (int,TYPE_2__*) ;

void backlight_effect_cycle_up_down(void)
{
    uint8_t offset = ( g_tick << g_config.effect_speed ) & 0xFF;
    HSV hsv = { .h = 0, .s = 255, .v = g_config.brightness };
    RGB rgb;
    Point point;
    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        uint16_t offset2 = g_key_hit[i]<<2;


        if ( i == 36+6 || i == 54+13 ||
                ( g_config.use_7u_spacebar && i == 54+14 ) )
        {
            offset2 = g_key_hit[36+0]<<2;
        }

        offset2 = (offset2<=63) ? (63-offset2) : 0;

        map_led_to_point( i, &point );

        hsv.h = point.y + offset + offset2;
        rgb = hsv_to_rgb( hsv );
        backlight_set_color( i, rgb.r, rgb.g, rgb.b );
    }
}
