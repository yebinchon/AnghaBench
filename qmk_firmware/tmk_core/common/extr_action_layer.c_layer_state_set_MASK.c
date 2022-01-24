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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(layer_state_t state) {
    state = FUNC5(state);
    FUNC2("layer_state: ");
    FUNC4();
    FUNC2(" to ");
    layer_state = state;
    FUNC4();
    FUNC3();
#    ifdef STRICT_LAYER_RELEASE
    clear_keyboard_but_mods();  // To avoid stuck keys
#    else
    FUNC1();  // Don't reset held keys
#    endif
}