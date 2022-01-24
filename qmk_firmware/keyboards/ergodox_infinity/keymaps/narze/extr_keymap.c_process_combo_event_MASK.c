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
#define  CB_SUPERDUPER 128 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SUPERDUPER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(uint8_t combo_index, bool pressed) {
    if (pressed) {
        switch(combo_index) {
            case CB_SUPERDUPER:
                FUNC4(_SUPERDUPER);
                FUNC2();
                break;
        }
    } else {
        FUNC3(_SUPERDUPER);
        FUNC1();
        FUNC5(FUNC0(KC_LGUI) | FUNC0(KC_LCTL) | FUNC0(KC_LALT)); // Sometimes mods are held, unregister them
    }
}