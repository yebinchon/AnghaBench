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
typedef  int /*<<< orphan*/  keypos_t ;
typedef  int /*<<< orphan*/  action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ disable_action_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

action_t FUNC5(bool pressed, keypos_t key) {
#if !defined(NO_ACTION_LAYER) && !defined(STRICT_LAYER_RELEASE)
    if (disable_action_cache) {
        return FUNC1(key);
    }

    uint8_t layer;

    if (pressed) {
        layer = FUNC2(key);
        FUNC4(key, layer);
    } else {
        layer = FUNC3(key);
    }
    return FUNC0(layer, key);
#else
    return layer_switch_get_action(key);
#endif
}