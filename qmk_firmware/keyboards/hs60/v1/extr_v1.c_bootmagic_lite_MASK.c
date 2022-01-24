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
 int /*<<< orphan*/  DEBOUNCE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	// The lite version of TMK's bootmagic made by Wilba.
	// 100% less potential for accidentally making the
	// keyboard do stupid things.

	// We need multiple scans because debouncing can't be turned off.
	FUNC3();
	FUNC4(DEBOUNCE);
	FUNC3();

	// If the Esc and space bar are held down on power up,
	// reset the EEPROM valid state and jump to bootloader.
	// Assumes Esc is at [0,0] and spacebar is at [4,6].
	// This isn't very generalized, but we need something that doesn't
	// rely on user's keymaps in firmware or EEPROM.
	if ( ( FUNC2(0) & (1<<0) ) &&
		( FUNC2(4) & (1<<6) ) )
	{
		// Set the TMK/QMK EEPROM state as invalid.
		FUNC1();
		//eeprom_set_valid(false);
		// Jump to bootloader.
		FUNC0();
	}
}