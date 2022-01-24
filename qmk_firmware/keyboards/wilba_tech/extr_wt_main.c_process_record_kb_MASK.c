#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  FN_MO13 129 
#define  FN_MO23 128 
 int MACRO00 ; 
 int MACRO15 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 
 int FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record)
{
#if RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED
	process_record_backlight(keycode, record);
#endif // RGB_BACKLIGHT_ENABLED || MONO_BACKLIGHT_ENABLED

	switch(keycode) {
		case FN_MO13:
			if (record->event.pressed) {
				FUNC2(1);
				FUNC5(1, 2, 3);
			} else {
				FUNC1(1);
				FUNC5(1, 2, 3);
			}
			return false;
			break;
		case FN_MO23:
			if (record->event.pressed) {
				FUNC2(2);
				FUNC5(1, 2, 3);
			} else {
				FUNC1(2);
				FUNC5(1, 2, 3);
			}
			return false;
			break;
	}

#ifdef DYNAMIC_KEYMAP_ENABLE
	// Handle macros
	if (record->event.pressed) {
		if ( keycode >= MACRO00 && keycode <= MACRO15 )
		{
			uint8_t id = keycode - MACRO00;
			dynamic_keymap_macro_send(id);
			return false;
		}
	}
#endif //DYNAMIC_KEYMAP_ENABLE

	return FUNC4(keycode, record);
}