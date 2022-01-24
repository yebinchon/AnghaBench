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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(void)
{
	// If the EEPROM has the magic, the data is good.
	// OK to load from EEPROM.
	if (FUNC7()) {
#if RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
		backlight_config_load();
#endif // RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
	} else	{
#if RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
		// If the EEPROM has not been saved before, or is out of date,
		// save the default values to the EEPROM. Default values
		// come from construction of the backlight_config instance.
		backlight_config_save();
#endif // RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
#ifdef DYNAMIC_KEYMAP_ENABLE
		// This resets the keymaps in EEPROM to what is in flash.
		dynamic_keymap_reset();
		// This resets the macros in EEPROM to nothing.
		dynamic_keymap_macro_reset();
#endif // DYNAMIC_KEYMAP_ENABLE
		// Save the magic number last, in case saving was interrupted
		FUNC8(true);
	}
	
#if RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
	// Initialize LED drivers for backlight.
	backlight_init_drivers();

	backlight_timer_init();
	backlight_timer_enable();
#endif // RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
}