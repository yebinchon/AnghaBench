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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int LR_NUMR ; 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int layer_state ; 

void FUNC9(void) {

    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();
    // led 1: numeric layer
    if (layer_state & (1 << LR_NUMR)) {
        FUNC3();
    }
    // led 2: BÉPO over Canadian Multilingual
    if (FUNC0()) {
        FUNC5();
    }
    // led 3: caps lock
    if (FUNC8() & (1<<USB_LED_CAPS_LOCK)) {
      FUNC7();
    }
}