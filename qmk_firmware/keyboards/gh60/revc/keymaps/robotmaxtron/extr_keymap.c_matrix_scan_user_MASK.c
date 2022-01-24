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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int layer_state ; 

void FUNC4(void) {

// Layer LED indicators
// ESC led on when in function layer, WASD cluster leds enabled when on arrow cluster
    uint32_t layer = layer_state;
    if (layer & (1<<1)) {
        FUNC3();
    } else {
        FUNC2();
    }

    if (layer & (1<<2)) {
        FUNC1();
    } else {
        FUNC0();
    }
}