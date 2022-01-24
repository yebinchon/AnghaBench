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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int J ; 
 int /*<<< orphan*/  KC_2 ; 
 int /*<<< orphan*/  KC_A ; 
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_DOT ; 
 int /*<<< orphan*/  KC_F ; 
 int /*<<< orphan*/  KC_G ; 
 int /*<<< orphan*/  KC_I ; 
 int /*<<< orphan*/  KC_L ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_M ; 
 int /*<<< orphan*/  KC_O ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  KC_V ; 
 int /*<<< orphan*/  KC_X ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int MINS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int W ; 
#define  _BL 139 
#define  _COPY 138 
#define  _CUS0 137 
#define  _CUS1 136 
#define  _CUS2 135 
#define  _CUS3 134 
#define  _CUS4 133 
#define  _CUS5 132 
 int /*<<< orphan*/  _CUSTOM ; 
#define  _CUT 131 
#define  _LOWER 130 
#define  _PASTE 129 
#define  _RAISE 128 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int const,int const,int /*<<< orphan*/ ) ; 

const macro_t *FUNC11(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {
    case _RAISE: // Raised layer.
	if (record->event.pressed) {
	    FUNC7(_RAISE);
	    FUNC10(_LOWER, _RAISE, _CUSTOM);
	} else {
	    FUNC6(_RAISE);
	    FUNC10(_LOWER, _RAISE, _CUSTOM);
	}
	break;
    case _LOWER: // Lowered layer.
	if (record->event.pressed) {
	    FUNC7(_LOWER);
	    FUNC10(_LOWER, _RAISE, _CUSTOM);
	} else {
	    FUNC6(_LOWER);
	    FUNC10(_LOWER, _RAISE, _CUSTOM);
	}
	break;
    case _BL: // Backlight
	if (record->event.pressed) {
	    FUNC8(KC_RSFT);
#ifdef BACKLIGHT_ENABLE
	    backlight_step();
#endif
	} else {
	    FUNC9(KC_RSFT);
	}
	break;
    case _CUS0: // enter your mobile# here
	    return FUNC1(FUNC2(9), FUNC2(9), FUNC2(9), FUNC2(MINS),FUNC2(9), FUNC2(9), FUNC2(9), FUNC2(MINS),FUNC2(9), FUNC2(9), FUNC2(9), FUNC2(9),END);
    case _CUS1: // signature line for email
	    return FUNC1(FUNC2(ENT), FUNC2(ENT), FUNC2(MINS), FUNC2(J), FUNC2(W), END);
    case _CUS2: // Custom macro 2
	    return FUNC1( FUNC0(KC_LSFT), FUNC3(KC_L), FUNC4(KC_LSFT), END );
    case _CUS3: // custom macro 3
	    return FUNC1( FUNC0(KC_LSFT), FUNC3(KC_F), FUNC4(KC_LSFT), END );
    case _CUS4: // custom macro 4
	    return FUNC1( FUNC0(KC_LSFT), FUNC3(KC_I), FUNC4(KC_LSFT), END );
    case _CUS5: // Enter your email here
	    return FUNC1( FUNC3(KC_F),
        FUNC0(KC_LSFT), FUNC3(KC_2), FUNC4(KC_LSFT),
        FUNC3(KC_G), FUNC3(KC_M), FUNC3(KC_A), FUNC3(KC_I), FUNC3(KC_L), FUNC3(KC_DOT), FUNC3(KC_C), FUNC3(KC_O), FUNC3(KC_M), END );
    case _CUT: //cut macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC3(KC_X), FUNC4(KC_LCTL), END );
    case _COPY: // copy macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC3(KC_C), FUNC4(KC_LCTL), END );
    case _PASTE: // paste macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC3(KC_V), FUNC4(KC_LCTL), END );
    };
    return MACRO_NONE;
}