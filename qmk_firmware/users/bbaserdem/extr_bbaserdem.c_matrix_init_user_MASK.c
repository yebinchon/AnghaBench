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
 int base_hue ; 
 int base_mod ; 
 scalar_t__ base_sat ; 
 int base_tog ; 
 int base_val ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8 (void) {

    // Keymap specific things, do it first thing to allow for delays etc
    FUNC0();

    // Correct unicode
#ifdef UNICODE_ENABLE
    set_unicode_input_mode(UC_LNX);
#endif

    // Make beginning layer DVORAK
    FUNC6(_DV);

//--RGB light initialize base layer
#ifdef RGBLIGHT_ENABLE
    // Base hue is white, and RGB disabled
    base_hue = 100;
    base_sat = 0;
    base_val = 255;
    base_mod = 2;
    base_tog = false;
    rgblight_enable();
    rgblight_mode(base_mod);
    rgblight_sethsv(base_hue,base_sat,base_val);
    rgblight_disable();
    rgblight_loadBase();
#endif

}