
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ use_7u_spacebar; int brightness; } ;
struct TYPE_10__ {int s; int h; } ;
struct TYPE_9__ {int v; int s; int h; } ;
struct TYPE_8__ {int b; int g; int r; } ;
typedef TYPE_1__ RGB ;
typedef TYPE_2__ HSV ;
typedef TYPE_3__ HS ;


 int backlight_set_color (int,int ,int ,int ) ;
 int backlight_set_color_all (int ,int ,int ) ;
 TYPE_6__ g_config ;
 TYPE_1__ hsv_to_rgb (TYPE_2__) ;

void backlight_effect_indicators_set_colors( uint8_t index, HS color )
{
    HSV hsv = { .h = color.h, .s = color.s, .v = g_config.brightness };
    RGB rgb = hsv_to_rgb( hsv );
    if ( index == 254 )
    {
        backlight_set_color_all( rgb.r, rgb.g, rgb.b );
    }
    else
    {
        backlight_set_color( index, rgb.r, rgb.g, rgb.b );



        if ( index == 36+0 )
        {
        }
    }
}
