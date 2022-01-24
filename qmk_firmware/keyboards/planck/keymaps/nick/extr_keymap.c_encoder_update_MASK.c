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
 int /*<<< orphan*/  KC_MS_WH_DOWN ; 
 int /*<<< orphan*/  KC_MS_WH_UP ; 
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(bool clockwise) {
    if (clockwise && !FUNC0(_RAISE)) {
        FUNC1(KC_MS_WH_DOWN);
    } else if (!clockwise && !FUNC0(_RAISE)) {
        FUNC1(KC_MS_WH_UP);
    } else if (clockwise && FUNC0(_RAISE)) {
        FUNC1(KC_VOLU);
    } else if (!clockwise && FUNC0(_RAISE)) {
        FUNC1(KC_VOLD);
    }
}