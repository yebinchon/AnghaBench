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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/ * RGBLED_SPLIT ; 
 scalar_t__ isLeftHand ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void) {
    isLeftHand = FUNC0();

#if defined(RGBLIGHT_ENABLE) && defined(RGBLED_SPLIT)
    uint8_t num_rgb_leds_split[2] = RGBLED_SPLIT;
    if (isLeftHand) {
        rgblight_set_clipping_range(0, num_rgb_leds_split[0]);
    } else {
        rgblight_set_clipping_range(num_rgb_leds_split[0], num_rgb_leds_split[1]);
    }
#endif

    if (FUNC1()) {
        FUNC2();
    } else {
        FUNC3();
    }
}