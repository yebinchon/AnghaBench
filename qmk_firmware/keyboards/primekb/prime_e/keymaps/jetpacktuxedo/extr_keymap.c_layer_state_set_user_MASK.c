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
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAPS_LED_PIN ; 
 int /*<<< orphan*/  NUM_LED_PIN ; 
 int /*<<< orphan*/  SCROLL_LED_PIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

layer_state_t FUNC3(layer_state_t state) {
    if (FUNC0(state, 1)) {
        FUNC1(CAPS_LED_PIN);
    } else {
        FUNC2(CAPS_LED_PIN);
    }
    if (FUNC0(state, 2)) {
        FUNC1(NUM_LED_PIN);
    } else {
        FUNC2(NUM_LED_PIN);
    }
    if (FUNC0(state, 3)) {
        FUNC1(SCROLL_LED_PIN);
    } else {
        FUNC2(SCROLL_LED_PIN);
    }
    return state;
}