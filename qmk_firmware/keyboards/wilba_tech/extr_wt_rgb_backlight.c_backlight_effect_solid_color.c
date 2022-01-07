
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int s; int h; } ;
struct TYPE_10__ {int brightness; TYPE_1__ color_1; } ;
struct TYPE_9__ {int v; int s; int h; } ;
struct TYPE_8__ {int b; int g; int r; } ;
typedef TYPE_2__ RGB ;
typedef TYPE_3__ HSV ;


 int backlight_set_color_all (int ,int ,int ) ;
 TYPE_6__ g_config ;
 TYPE_2__ hsv_to_rgb (TYPE_3__) ;

void backlight_effect_solid_color(void)
{
    HSV hsv = { .h = g_config.color_1.h, .s = g_config.color_1.s, .v = g_config.brightness };
    RGB rgb = hsv_to_rgb( hsv );
    backlight_set_color_all( rgb.r, rgb.g, rgb.b );
}
