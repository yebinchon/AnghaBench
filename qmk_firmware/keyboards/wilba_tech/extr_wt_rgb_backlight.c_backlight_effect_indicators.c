
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int index; int color; } ;
struct TYPE_8__ {int index; int color; } ;
struct TYPE_7__ {int index; int color; } ;
struct TYPE_6__ {int index; int color; } ;
struct TYPE_10__ {TYPE_4__ layer_1_indicator; TYPE_3__ layer_2_indicator; TYPE_2__ layer_3_indicator; TYPE_1__ caps_lock_indicator; } ;


 int IS31FL3733_set_color (int,int,int,int) ;
 scalar_t__ IS_LAYER_ON (int) ;
 scalar_t__ IS_LED_ON (int,int) ;
 int USB_LED_CAPS_LOCK ;
 int backlight_effect_indicators_set_colors (int,int ) ;
 TYPE_5__ g_config ;
 int g_indicator_state ;

void backlight_effect_indicators(void)
{
    if ( g_config.caps_lock_indicator.index != 255 &&
            ( g_indicator_state & (1<<USB_LED_CAPS_LOCK) ) )
    {
        backlight_effect_indicators_set_colors( g_config.caps_lock_indicator.index, g_config.caps_lock_indicator.color );
    }
    if ( IS_LAYER_ON(3) )
    {
        if ( g_config.layer_3_indicator.index != 255 )
        {
            backlight_effect_indicators_set_colors( g_config.layer_3_indicator.index, g_config.layer_3_indicator.color );
        }
    }
    else if ( IS_LAYER_ON(2) )
    {
        if ( g_config.layer_2_indicator.index != 255 )
        {
            backlight_effect_indicators_set_colors( g_config.layer_2_indicator.index, g_config.layer_2_indicator.color );
        }
    }
    else if ( IS_LAYER_ON(1) )
    {
        if ( g_config.layer_1_indicator.index != 255 )
        {
            backlight_effect_indicators_set_colors( g_config.layer_1_indicator.index, g_config.layer_1_indicator.color );
        }
    }
}
