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
 unsigned long default_layer_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC8(void) {
    static uint8_t state;

    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();

    //reduce LED on time to 1/6th because LEDs are too strong
    if (++state < 6) return;
    state = 0;

    //bit 1: default layer 1 - QWERTY
    if (default_layer_state & (1UL << 1)) FUNC3();

    uint8_t layer = FUNC0(layer_state);

    //layer 2 : Symbols (& Fs)
    //if (layer == 2) ergodox_right_led_2_on();

    //layer 3 : F-lock
    if (layer == 3) FUNC5();

    //layer 4 : Num-lock
    if (layer == 4) FUNC7();
}