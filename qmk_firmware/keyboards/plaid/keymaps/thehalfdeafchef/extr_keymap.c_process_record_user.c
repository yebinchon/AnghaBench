
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {void* red_mode; void* green_mode; int raw; } ;





 void* LED_OFF ;
 void* LED_ON ;

 int _COLEMAK ;
 int _DVORAK ;
 int _QWERTY ;
 int eeconfig_update_user (int ) ;
 TYPE_4__ led_config ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 128:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWERTY);
            }
            return 0;
            break;
        case 131:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_COLEMAK);
            }
            return 0;
            break;
        case 130:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_DVORAK);
            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                if (led_config.red_mode == LED_ON && led_config.green_mode == LED_ON) {
                    led_config.red_mode = LED_OFF;
                    led_config.green_mode = LED_OFF;
                } else if (led_config.red_mode == LED_OFF && led_config.green_mode == LED_OFF) {
                    led_config.red_mode = LED_ON;
                    led_config.green_mode = LED_ON;
                }
            }
            eeconfig_update_user(led_config.raw);
            return 0;
            break;
    }
    return 1;
}
