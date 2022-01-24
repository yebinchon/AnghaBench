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
#define  FMU 130 
 int /*<<< orphan*/  LED_BRIGHTNESS_HI ; 
#define  PMN 129 
#define  PMQ 128 
 int USB_LED_SCROLL_LOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC10(void)
{
    uint8_t layer = FUNC0(layer_state);

    FUNC1();
    FUNC3();
    FUNC5();
    FUNC7();
    switch (layer) {
        case FMU:
            FUNC4();
        break;
        case PMQ:
            FUNC6();
        break;
        case PMN:
            FUNC8();
        break;
        default:
            if(FUNC9() & (1<<USB_LED_SCROLL_LOCK)) {
                FUNC2(LED_BRIGHTNESS_HI);
                FUNC4();
            }
            else {
                FUNC1();
            }
        break;
    }

}