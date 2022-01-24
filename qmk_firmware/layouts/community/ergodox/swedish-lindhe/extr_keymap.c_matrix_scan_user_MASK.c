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
 int USB_LED_CAPS_LOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC9(void) {

    uint8_t layer = FUNC0(layer_state);

    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();
    switch (layer) {
      // TODO: Make this relevant to the ErgoDox EZ.
        case 1:
            FUNC7();
            break;
        case 2:
            FUNC5();
            break;
        case 3:
            FUNC5();
            FUNC7();
            break;
        default:
            // none
            break;
    }

    if (FUNC8() & (1<<USB_LED_CAPS_LOCK)) {
        // if capslk is on, set led 1 on
        FUNC3();
    } else {
        FUNC2();
    }

}