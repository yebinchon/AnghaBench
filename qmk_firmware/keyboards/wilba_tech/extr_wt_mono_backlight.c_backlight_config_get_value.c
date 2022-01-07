
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int disable_after_timeout; int brightness; int effect; int effect_speed; int color_1; int disable_when_usb_suspended; } ;


 int _get_color (int *,int*) ;
 TYPE_1__ g_config ;







void backlight_config_get_value( uint8_t *data )
{
    uint8_t *value_id = &(data[0]);
    uint8_t *value_data = &(data[1]);
    switch ( *value_id )
    {
        case 130:
        {
            *value_data = ( g_config.disable_when_usb_suspended ? 1 : 0 );
            break;
        }
        case 131:
        {
            *value_data = g_config.disable_after_timeout;
            break;
        }
        case 133:
        {
            *value_data = g_config.brightness;
            break;
        }
        case 129:
        {
            *value_data = g_config.effect;
            break;
        }
        case 128:
        {
            *value_data = g_config.effect_speed;
            break;
        }
        case 132:
        {
            _get_color( &(g_config.color_1), value_data );
            break;
        }
    }
}
