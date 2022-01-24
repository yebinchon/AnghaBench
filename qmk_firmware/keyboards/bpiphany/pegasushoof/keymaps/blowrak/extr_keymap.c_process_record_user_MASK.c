#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  key; scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_RALT ; 
 scalar_t__ KC_TRNS ; 
 int /*<<< orphan*/  KM_HAXHAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
	uint8_t modifiers = FUNC1();
	if (modifiers & FUNC0(KC_RALT) && record->event.pressed) {
		uint16_t kc = FUNC2(KM_HAXHAX, record->event.key);
		if (kc != KC_TRNS) {
			FUNC3(kc);
			FUNC4(kc);
			return false;
		}
	}
	return true;
}