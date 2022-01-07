
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int index; int color; } ;
struct TYPE_8__ {int index; int color; } ;
struct TYPE_7__ {int index; int color; } ;
struct TYPE_6__ {int index; int color; } ;
struct TYPE_10__ {int disable_after_timeout; int brightness; int effect; int effect_speed; int* alphas_mods; int * custom_color; TYPE_4__ layer_3_indicator; TYPE_3__ layer_2_indicator; TYPE_2__ layer_1_indicator; TYPE_1__ caps_lock_indicator; int color_2; int color_1; int disable_hhkb_blocker_leds; int disable_when_usb_suspended; int use_iso_enter; int use_7u_spacebar; int use_split_right_shift; int use_split_left_shift; int use_split_backspace; } ;


 int _get_color (int *,int*) ;
 int backlight_get_indicator_row_col (int ,int*,int*) ;
 TYPE_5__ g_config ;
void backlight_config_get_value( uint8_t *data )
{
    uint8_t *value_id = &(data[0]);
    uint8_t *value_data = &(data[1]);
    switch ( *value_id )
    {
        case 130:
        {
            *value_data = ( g_config.use_split_backspace ? 1 : 0 );
            break;
        }
        case 129:
        {
            *value_data = ( g_config.use_split_left_shift ? 1 : 0 );
            break;
        }
        case 128:
        {
            *value_data = ( g_config.use_split_right_shift ? 1 : 0 );
            break;
        }
        case 132:
        {
            *value_data = ( g_config.use_7u_spacebar ? 1 : 0 );
            break;
        }
        case 131:
        {
            *value_data = ( g_config.use_iso_enter ? 1 : 0 );
            break;
        }
        case 141:
        {
            *value_data = ( g_config.disable_when_usb_suspended ? 1 : 0 );
            break;
        }
        case 142:
        {
            *value_data = ( g_config.disable_hhkb_blocker_leds ? 1 : 0 );
            break;
        }
        case 143:
        {
            *value_data = g_config.disable_after_timeout;
            break;
        }
        case 149:
        {
            *value_data = g_config.brightness;
            break;
        }
        case 140:
        {
            *value_data = g_config.effect;
            break;
        }
        case 139:
        {
            *value_data = g_config.effect_speed;
            break;
        }
        case 146:
        {
            _get_color( &(g_config.color_1), value_data );
            break;
        }
        case 145:
        {
            _get_color( &(g_config.color_2), value_data );
            break;
        }
        case 148:
        {
            _get_color( &(g_config.caps_lock_indicator.color), value_data );
            break;
        }
        case 147:
        {
            backlight_get_indicator_row_col( g_config.caps_lock_indicator.index, &(value_data[0]), &(value_data[1]) );
            break;
        }
        case 138:
        {
            _get_color( &(g_config.layer_1_indicator.color), value_data );
            break;
        }
        case 137:
        {
            backlight_get_indicator_row_col( g_config.layer_1_indicator.index, &(value_data[0]), &(value_data[1]) );
            break;
        }
        case 136:
        {
            _get_color( &(g_config.layer_2_indicator.color), value_data );
            break;
        }
        case 135:
        {
            backlight_get_indicator_row_col( g_config.layer_2_indicator.index, &(value_data[0]), &(value_data[1]) );
            break;
        }
        case 134:
        {
            _get_color( &(g_config.layer_3_indicator.color), value_data );
            break;
        }
        case 133:
        {
            backlight_get_indicator_row_col( g_config.layer_3_indicator.index, &(value_data[0]), &(value_data[1]) );
            break;
        }
        case 150:
        {
            for ( int i=0; i<5; i++ )
            {
                *(value_data+i*2) = g_config.alphas_mods[i] >> 8;
                *(value_data+i*2+1) = g_config.alphas_mods[i] & 0xFF;
            }
        }
    }
}
