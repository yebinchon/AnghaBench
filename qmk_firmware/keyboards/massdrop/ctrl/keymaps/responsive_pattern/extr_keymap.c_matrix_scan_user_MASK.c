#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int PATTERN_INDEX; int WAVE_FRONT_WIDTH; size_t COLOR_PATTERN_INDEX; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  BLACK_RGB 145 
 int*** COLOR_PATTERNS ; 
 int COLOR_PATTERN_RGB_COUNT ; 
#define  COLOR_RGB 144 
 int* DISTANCE_FROM_LAST_KEYSTROKE ; 
#define  KC_A 143 
 int KC_CAPS ; 
#define  KC_D 142 
#define  KC_E 141 
#define  KC_H 140 
#define  KC_I 139 
#define  KC_J 138 
#define  KC_K 137 
#define  KC_L 136 
#define  KC_O 135 
#define  KC_P 134 
#define  KC_Q 133 
#define  KC_S 132 
 int KC_TAB ; 
#define  KC_U 131 
#define  KC_W 130 
#define  KC_Y 129 
 int KEY_LED_COUNT ; 
 TYPE_2__ USER_CONFIG ; 
 TYPE_1__* USER_LED ; 
#define  USE_PATTERN 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int layer_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void) {
    static uint32_t scan_timer = 0;
    static uint8_t last_layer = 0;

    uint8_t layer = 0;
    if(layer_state >= 0x04){
        layer = 2;
    } else if(layer_state >= 0x02){
        layer = 1;
    }

    FUNC0();


    #define USE_PATTERN 0
    #define BLACK_RGB 1
    #define COLOR_RGB 2
    uint8_t ci; // color index
    uint8_t *rgb;
    uint8_t handle_type;
    uint8_t distance;
    for(uint8_t i = 1; i <= KEY_LED_COUNT; ++i){
        if(USER_LED[i-1].state >= 2) continue;

        handle_type = USE_PATTERN;
        distance = DISTANCE_FROM_LAST_KEYSTROKE[i];

        switch(USER_CONFIG.PATTERN_INDEX){
        case 0: handle_type = USE_PATTERN; break;
        case 1: handle_type = distance ? USE_PATTERN : BLACK_RGB; break;
        case 2: handle_type = distance ? BLACK_RGB : USE_PATTERN; break;
        case 3: handle_type = distance ? COLOR_RGB : BLACK_RGB; break;
        case 4: handle_type = distance ? COLOR_RGB : USE_PATTERN; break;
        case 5:
        case 6: handle_type = distance ? COLOR_RGB : USE_PATTERN; break;
        }
        switch(handle_type){
        case USE_PATTERN: FUNC9(i); break;
        case BLACK_RGB: FUNC5(i, 0, 0, 0); break;
        case COLOR_RGB:
            ci = (DISTANCE_FROM_LAST_KEYSTROKE[i] * COLOR_PATTERN_RGB_COUNT /
                    USER_CONFIG.WAVE_FRONT_WIDTH) % COLOR_PATTERN_RGB_COUNT;
            rgb = &COLOR_PATTERNS[USER_CONFIG.COLOR_PATTERN_INDEX][ci][0];

            FUNC5(i, rgb[0], rgb[1], rgb[2]);
            break;
        }
    }


    // could be moved to process_record_user()
    if(layer != last_layer){

        static uint8_t QWEASDP[] = {
            KC_Q, KC_W, KC_E, KC_A, KC_S, KC_D, KC_P,
        };
        static uint8_t YUIOHJKL[] = {
            KC_Y, KC_U, KC_I, KC_O, KC_H, KC_J, KC_K, KC_L,
        };

        switch(last_layer){
        case 1:
            for(uint8_t i = 0; i < 7; ++i){
                FUNC8(FUNC1(QWEASDP[i]), 1);
            }
            break;
        case 2:
            for(uint8_t i = 0; i < 6; ++i){
                FUNC8(FUNC1(QWEASDP[i]), 2);
            }
            for(uint8_t i = 0; i < 8; ++i){
                FUNC8(FUNC1(YUIOHJKL[i]), 2);
            }
            FUNC8(FUNC1(KC_TAB), 2);
            FUNC8(FUNC1(KC_CAPS), 2);
            break;
        }


        switch(layer){
        case 1:
            for(uint8_t i = 0; i < 7; ++i){
                FUNC4(FUNC1(QWEASDP[i]), 1, 255, 0, 0);
            }
            break;
        case 2:
            for(uint8_t i = 0; i < 6; ++i){
                FUNC4(FUNC1(QWEASDP[i]), 2, 0, 255, 0);
            }
            for(uint8_t i = 0; i < 8; ++i){
                FUNC4(FUNC1(YUIOHJKL[i]), 2, 0, 255, 0);
            }
            FUNC4(FUNC1(KC_TAB), 2, 0, 255, 0);
            FUNC4(FUNC1(KC_CAPS), 2, 0, 255, 0);
            break;
        }

        FUNC3();
        FUNC2();
        last_layer = layer;
    }


    switch(layer){
    case 0:
        if(FUNC6(scan_timer) > 2000){
            scan_timer = FUNC7();
        } else if(FUNC6(scan_timer) > 1000){
            // set_user_led_rgb(ktli(KC_F5), 255, 255, 255);
        }
        break;
    case 1:
        break;
    case 2:
        break;
    }

}