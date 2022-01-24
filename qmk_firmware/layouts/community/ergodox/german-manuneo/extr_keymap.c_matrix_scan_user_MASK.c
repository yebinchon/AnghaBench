#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
#define  L1 132 
#define  L2 131 
#define  L3 130 
#define  L4 129 
#define  L5 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC8(void) {
    uint8_t layer = FUNC0(layer_state);

    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();
    switch (layer) {
        case L1:
            FUNC3();
            break;
        case L2:
            FUNC5();
            break;
        case L3:
            FUNC7();
            break;
        case L4:
            FUNC3();
            FUNC5();
            break;
        case L5:
            FUNC3();
            FUNC7();
            break;
        // case L6:
        //     ergodox_right_led_2_on();
        //     ergodox_right_led_3_on();
        //     break;
        // case L7:
        //     ergodox_right_led_1_on();
        //     ergodox_right_led_2_on();
        //     ergodox_right_led_3_on();
        //     break;
        default:
            FUNC1();
            break;
    }
}