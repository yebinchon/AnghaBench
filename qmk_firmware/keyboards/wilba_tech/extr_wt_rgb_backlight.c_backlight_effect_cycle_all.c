
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int effect_speed; int brightness; scalar_t__ use_7u_spacebar; } ;
struct TYPE_7__ {int s; int v; int h; } ;
struct TYPE_6__ {int b; int g; int r; } ;
typedef TYPE_1__ RGB ;
typedef TYPE_2__ HSV ;


 int BACKLIGHT_LED_COUNT ;
 int backlight_set_color (int,int ,int ,int ) ;
 TYPE_5__ g_config ;
 int* g_key_hit ;
 int g_tick ;
 TYPE_1__ hsv_to_rgb (TYPE_2__) ;

void backlight_effect_cycle_all(void)
{
    uint8_t offset = ( g_tick << g_config.effect_speed ) & 0xFF;


    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        uint16_t offset2 = g_key_hit[i]<<2;


        if ( i == 36+6 || i == 54+13 ||
                ( g_config.use_7u_spacebar && i == 54+14 ) )
        {
            offset2 = g_key_hit[36+0]<<2;
        }

        offset2 = (offset2<=63) ? (63-offset2) : 0;

        HSV hsv = { .h = offset+offset2, .s = 255, .v = g_config.brightness };
        RGB rgb = hsv_to_rgb( hsv );
        backlight_set_color( i, rgb.r, rgb.g, rgb.b );
    }
}
