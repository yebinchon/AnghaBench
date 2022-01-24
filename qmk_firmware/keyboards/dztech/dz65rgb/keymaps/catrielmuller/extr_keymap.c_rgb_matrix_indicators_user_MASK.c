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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * MAIN_COLOR ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int* layers_leds_map ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void) {

    // CapsLock Light
    if (FUNC0(USB_LED_CAPS_LOCK)) {
        FUNC2(8, MAIN_COLOR[0], MAIN_COLOR[1], MAIN_COLOR[2]);
    }

    // Show Selected Layer
    FUNC2(layers_leds_map[FUNC1(layer_state)], MAIN_COLOR[0], MAIN_COLOR[1], MAIN_COLOR[2]);
}