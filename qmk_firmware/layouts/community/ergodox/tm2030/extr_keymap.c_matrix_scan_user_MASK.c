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
 int DVRK ; 
 int NUMR ; 
 int USB_LED_CAPS_LOCK ; 
 int default_layer_state ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int layer_state ; 

void FUNC8(void) {

    FUNC0();
    FUNC1();
    FUNC3();
    FUNC5();
    // led 1: numeric layer
    if (layer_state & (1 << NUMR)) {
        FUNC2();
    }
    // led 2: Dvorak layer
    if (default_layer_state == 1 << DVRK) {
        FUNC4();
    }
    // led 3: caps lock
    if (FUNC7() & (1<<USB_LED_CAPS_LOCK)) {
      FUNC6();
    }

}