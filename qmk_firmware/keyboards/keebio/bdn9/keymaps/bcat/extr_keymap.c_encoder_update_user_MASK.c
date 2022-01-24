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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t index, bool clockwise) {
    switch (index) {
        /* Top-left encoder (volume) */
        case 0:
            FUNC2(clockwise ? KC_VOLU : KC_VOLD);
            break;
    
        /* Top-right encoder (backlight brightness) */
        case 1:
            if (clockwise) {
                FUNC1();
            } else {
                FUNC0();
            }
            break;
    }
}