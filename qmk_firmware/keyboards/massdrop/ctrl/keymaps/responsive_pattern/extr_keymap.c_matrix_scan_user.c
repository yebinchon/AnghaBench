
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int PATTERN_INDEX; int WAVE_FRONT_WIDTH; size_t COLOR_PATTERN_INDEX; } ;
struct TYPE_3__ {int state; } ;



 int*** COLOR_PATTERNS ;
 int COLOR_PATTERN_RGB_COUNT ;

 int* DISTANCE_FROM_LAST_KEYSTROKE ;

 int KC_CAPS ;
 int KC_TAB ;



 int KEY_LED_COUNT ;
 TYPE_2__ USER_CONFIG ;
 TYPE_1__* USER_LED ;

 int calculate_keystroke_distance () ;
 int ktli (int) ;
 int layer_state ;
 int refresh_color_pattern_indicators () ;
 int refresh_pattern_indicators () ;
 int set_indicator_led_rgb (int ,int,int,int,int ) ;
 int set_user_led_rgb (int,int,int,int) ;
 int timer_elapsed32 (int ) ;
 int timer_read32 () ;
 int unset_indicator_led_rgb (int ,int) ;
 int unset_user_led_rgb (int) ;

void matrix_scan_user(void) {
    static uint32_t scan_timer = 0;
    static uint8_t last_layer = 0;

    uint8_t layer = 0;
    if(layer_state >= 0x04){
        layer = 2;
    } else if(layer_state >= 0x02){
        layer = 1;
    }

    calculate_keystroke_distance();





    uint8_t ci;
    uint8_t *rgb;
    uint8_t handle_type;
    uint8_t distance;
    for(uint8_t i = 1; i <= KEY_LED_COUNT; ++i){
        if(USER_LED[i-1].state >= 2) continue;

        handle_type = 0;
        distance = DISTANCE_FROM_LAST_KEYSTROKE[i];

        switch(USER_CONFIG.PATTERN_INDEX){
        case 0: handle_type = 0; break;
        case 1: handle_type = distance ? 0 : 1; break;
        case 2: handle_type = distance ? 1 : 0; break;
        case 3: handle_type = distance ? 2 : 1; break;
        case 4: handle_type = distance ? 2 : 0; break;
        case 5:
        case 6: handle_type = distance ? 2 : 0; break;
        }
        switch(handle_type){
        case 0: unset_user_led_rgb(i); break;
        case 1: set_user_led_rgb(i, 0, 0, 0); break;
        case 2:
            ci = (DISTANCE_FROM_LAST_KEYSTROKE[i] * COLOR_PATTERN_RGB_COUNT /
                    USER_CONFIG.WAVE_FRONT_WIDTH) % COLOR_PATTERN_RGB_COUNT;
            rgb = &COLOR_PATTERNS[USER_CONFIG.COLOR_PATTERN_INDEX][ci][0];

            set_user_led_rgb(i, rgb[0], rgb[1], rgb[2]);
            break;
        }
    }



    if(layer != last_layer){

        static uint8_t QWEASDP[] = {
            133, 130, 141, 143, 132, 142, 134,
        };
        static uint8_t YUIOHJKL[] = {
            129, 131, 139, 135, 140, 138, 137, 136,
        };

        switch(last_layer){
        case 1:
            for(uint8_t i = 0; i < 7; ++i){
                unset_indicator_led_rgb(ktli(QWEASDP[i]), 1);
            }
            break;
        case 2:
            for(uint8_t i = 0; i < 6; ++i){
                unset_indicator_led_rgb(ktli(QWEASDP[i]), 2);
            }
            for(uint8_t i = 0; i < 8; ++i){
                unset_indicator_led_rgb(ktli(YUIOHJKL[i]), 2);
            }
            unset_indicator_led_rgb(ktli(KC_TAB), 2);
            unset_indicator_led_rgb(ktli(KC_CAPS), 2);
            break;
        }


        switch(layer){
        case 1:
            for(uint8_t i = 0; i < 7; ++i){
                set_indicator_led_rgb(ktli(QWEASDP[i]), 1, 255, 0, 0);
            }
            break;
        case 2:
            for(uint8_t i = 0; i < 6; ++i){
                set_indicator_led_rgb(ktli(QWEASDP[i]), 2, 0, 255, 0);
            }
            for(uint8_t i = 0; i < 8; ++i){
                set_indicator_led_rgb(ktli(YUIOHJKL[i]), 2, 0, 255, 0);
            }
            set_indicator_led_rgb(ktli(KC_TAB), 2, 0, 255, 0);
            set_indicator_led_rgb(ktli(KC_CAPS), 2, 0, 255, 0);
            break;
        }

        refresh_pattern_indicators();
        refresh_color_pattern_indicators();
        last_layer = layer;
    }


    switch(layer){
    case 0:
        if(timer_elapsed32(scan_timer) > 2000){
            scan_timer = timer_read32();
        } else if(timer_elapsed32(scan_timer) > 1000){

        }
        break;
    case 1:
        break;
    case 2:
        break;
    }

}
