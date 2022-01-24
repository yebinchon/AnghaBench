#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  key; scalar_t__ pressed; } ;
typedef  TYPE_1__ keyevent_t ;

/* Variables and functions */
 int /*<<< orphan*/  disable_action_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint16_t FUNC4(keyevent_t event) {
#if !defined(NO_ACTION_LAYER) && !defined(STRICT_LAYER_RELEASE)
    /* TODO: Use store_or_get_action() or a similar function. */
    if (!disable_action_cache) {
        uint8_t layer;

        if (event.pressed) {
            layer = FUNC1(event.key);
            FUNC3(event.key, layer);
        } else {
            layer = FUNC2(event.key);
        }
        return FUNC0(layer, event.key);
    } else
#endif
        return FUNC0(FUNC1(event.key), event.key);
}