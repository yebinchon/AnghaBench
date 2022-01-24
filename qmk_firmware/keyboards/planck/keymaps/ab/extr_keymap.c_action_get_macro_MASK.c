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
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int A ; 
 int C ; 
 int E ; 
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int L ; 
 int M ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int MINS ; 
 int S ; 
 int SPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  _BL 133 
#define  _CUS1 132 
#define  _CUS2 131 
 int /*<<< orphan*/  _CUSTOM ; 
#define  _LOWER 130 
#define  _MOB 129 
#define  _RAISE 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const,int const,int /*<<< orphan*/ ) ; 

const macro_t *FUNC8(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {
    case _RAISE: // Raised layer.
	if (record->event.pressed) {
	    FUNC4(_RAISE);
	    FUNC7(_LOWER, _RAISE, _CUSTOM);
	} else {
	    FUNC3(_RAISE);
	    FUNC7(_LOWER, _RAISE, _CUSTOM);
	}
	break;
    case _LOWER: // Lowered layer.
	if (record->event.pressed) {
	    FUNC4(_LOWER);
	    FUNC7(_LOWER, _RAISE, _CUSTOM);
	} else {
	    FUNC3(_LOWER);
	    FUNC7(_LOWER, _RAISE, _CUSTOM);
	}
	break;
    case _BL: // Backlight
	if (record->event.pressed) {
	    FUNC5(KC_RSFT);
#ifdef BACKLIGHT_ENABLE
	    backlight_step();
#endif
	} else {
	    FUNC6(KC_RSFT);
	}
	break;
    case _MOB: // Your mobile# here.
	return FUNC0(FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(MINS),
			 FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(MINS),
			 FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(4),
			 END);
    case _CUS1: // Your custom macro 1
	return FUNC0(FUNC1(E), FUNC1(M), FUNC1(A), FUNC1(C), FUNC1(S), FUNC1(SPC), END);
    case _CUS2: // Your custom macro 2
	return FUNC0(FUNC1(L), FUNC1(S), FUNC1(SPC), FUNC1(MINS), FUNC1(L), FUNC1(ENT), END);
    };
    return MACRO_NONE;
}