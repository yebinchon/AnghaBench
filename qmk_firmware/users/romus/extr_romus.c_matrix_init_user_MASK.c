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
 int /*<<< orphan*/  UC_LNX ; 
 int /*<<< orphan*/  _DV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (void) {

    // Keymap specific things, do it first thing to allow for delays etc
    FUNC0();

    // Correct unicode
#ifdef UNICODE_ENABLE
    set_unicode_input_mode(UC_LNX);
#endif

    // Make beginning layer DVORAK
    FUNC1(_DV);

}