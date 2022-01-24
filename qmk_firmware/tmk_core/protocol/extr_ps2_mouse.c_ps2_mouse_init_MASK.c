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
 int /*<<< orphan*/  PS2_MOUSE_INIT_DELAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PS2_MOUSE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void) {
    FUNC3();

    FUNC2(PS2_MOUSE_INIT_DELAY);  // wait for powering up

    FUNC1(PS2_MOUSE_RESET, "ps2_mouse_init: sending reset");

    FUNC0("ps2_mouse_init: read BAT");
    FUNC0("ps2_mouse_init: read DevID");

#ifdef PS2_MOUSE_USE_REMOTE_MODE
    ps2_mouse_set_remote_mode();
#else
    FUNC4();
#endif

#ifdef PS2_MOUSE_ENABLE_SCROLLING
    ps2_mouse_enable_scrolling();
#endif

#ifdef PS2_MOUSE_USE_2_1_SCALING
    ps2_mouse_set_scaling_2_1();
#endif

    FUNC6();
}