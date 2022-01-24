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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC5(void) {
    /* leds is a static array holding the current brightness of each of the
     * three keyboard LEDs. It's 4 long simply to avoid the ugliness of +1s and
     * -1s in the code below, and because wasting a byte really doesn't matter
     * that much (no, it *doesn't*, stop whinging!). Note that because it's
     * static it'll maintain state across invocations of this routine.
     */
    static uint8_t leds[4];
    uint8_t led;
    uint8_t layer = FUNC0(layer_state);

    FUNC1();

    /* Loop over each LED/layer */
    for (led = 1; led <= 3; ++led) {
        /* If the current layer matches the current LED, increment its
         * brightness by 1 up to a maximum of 255. If the current layer doesn't
         * match, decrement its brightness by 1 down to a minimum of zero.
         */
        leds[led] += (layer == led) ?
            (leds[led] < 255 ? 1 : 0):
            (leds[led] > 0 ? -1 : 0);
        /* Set LED state according to the new brightness */
        if (leds[led]) {
            FUNC3(led);
            FUNC4(led, leds[led]);
        }
        else {
            FUNC2(led);
        }
    }


}