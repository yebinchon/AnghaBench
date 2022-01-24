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
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int layer_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (clockwise) {
            FUNC2(KC_VOLD);
        } else {
            FUNC2(KC_VOLU);
        }
    }
    else if (index == 1) {
        int mod = 0;
        if (clockwise) {
            mod = 1;
        } else {
            mod = -1;
        }
        int n = 2; //sizeof(PROGMEM);
        int new_layer = ((layer_state + mod) % n + n) % n;
        FUNC3("new: %d\n", new_layer);
        FUNC1(new_layer);
        for(int i=0; i < n; i++) {
            if (new_layer != i) {
                FUNC0(i);
            }
        }
    }
}