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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_NLCK ; 
 int /*<<< orphan*/  L_NUMPAD ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

uint32_t FUNC4(uint32_t state) {
    state = FUNC2(state);

#ifdef LAYER_NUMPAD
    bool numpad = IS_LAYER_ON_STATE(state, L_NUMPAD);
    bool num_lock = IS_HOST_LED_ON(USB_LED_NUM_LOCK);
    if (numpad != num_lock) {
        tap_code(KC_NLCK);  // Toggle Num Lock to match Numpad layer state
    }
#endif

    return state;
}