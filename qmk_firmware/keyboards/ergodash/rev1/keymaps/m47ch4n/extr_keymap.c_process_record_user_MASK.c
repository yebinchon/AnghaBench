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
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  ADJUST 133 
 int /*<<< orphan*/  AMPR ; 
 int /*<<< orphan*/  ASTR ; 
 int /*<<< orphan*/  AT ; 
 int BSLASH ; 
 int /*<<< orphan*/  BSLS ; 
 int BSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CIRC ; 
 int /*<<< orphan*/  CSTM_0 ; 
 int /*<<< orphan*/  CSTM_1 ; 
 int /*<<< orphan*/  CSTM_2 ; 
 int /*<<< orphan*/  CSTM_3 ; 
 int /*<<< orphan*/  CSTM_4 ; 
 int /*<<< orphan*/  CSTM_5 ; 
 int /*<<< orphan*/  CSTM_6 ; 
 int /*<<< orphan*/  CSTM_7 ; 
 int /*<<< orphan*/  CSTM_8 ; 
 int /*<<< orphan*/  CSTM_9 ; 
 int /*<<< orphan*/  DEL ; 
 int DELETE ; 
 int /*<<< orphan*/  DLR ; 
 int /*<<< orphan*/  EQL ; 
 int EQUAL ; 
 int /*<<< orphan*/  EXLM ; 
 int GRAVE ; 
 int /*<<< orphan*/  GRV ; 
 int /*<<< orphan*/  HASH ; 
 int INT1 ; 
 int INT3 ; 
#define  JP 132 
 int /*<<< orphan*/  JP_LAYOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LAYOUT_STATUS ; 
 int LBRACKET ; 
 int /*<<< orphan*/  LBRC ; 
 int /*<<< orphan*/  LCBR ; 
#define  LOWER 131 
 int /*<<< orphan*/  LPRN ; 
 int /*<<< orphan*/  MINS ; 
 int MINUS ; 
 int NONUS_HASH ; 
 int /*<<< orphan*/  PERC ; 
 int /*<<< orphan*/  PIPE ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  QUOT ; 
 int QUOTE ; 
#define  RAISE 130 
 int RBRACKET ; 
 int /*<<< orphan*/  RBRC ; 
 int /*<<< orphan*/  RCBR ; 
 int /*<<< orphan*/  RPRN ; 
 int /*<<< orphan*/  SCLN ; 
 int SCOLON ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  SHIFT 129 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SHIFT_PRESSED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TILD ; 
 int /*<<< orphan*/  UNDS ; 
#define  US 128 
 int /*<<< orphan*/  US_LAYOUT ; 
 int /*<<< orphan*/  X_LSHIFT ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        FUNC0(CSTM_0, FUNC1(0), FUNC5(FUNC2(9), FUNC1(0)));
        FUNC0(CSTM_1, FUNC1(1), FUNC1(1));
        FUNC0(CSTM_2, FUNC1(2), FUNC5(FUNC3(LBRACKET), FUNC1(2)));
        FUNC0(CSTM_3, FUNC1(3), FUNC1(3));
        FUNC0(CSTM_4, FUNC1(4), FUNC1(4));
        FUNC0(CSTM_5, FUNC1(5), FUNC1(5));
        FUNC0(CSTM_6, FUNC1(6), FUNC5(FUNC3(EQUAL), FUNC1(6)));
        FUNC0(CSTM_7, FUNC1(7), FUNC5(FUNC2(6), FUNC1(7)));
        FUNC0(CSTM_8, FUNC1(8), FUNC5(FUNC2(QUOTE), FUNC1(8)));
        FUNC0(CSTM_9, FUNC1(9), FUNC5(FUNC2(8), FUNC1(9)));
        FUNC0(DEL, FUNC1(DELETE), FUNC3(BSPACE));
        FUNC0(TILD, FUNC2(GRAVE), FUNC2(EQUAL));
        FUNC0(EXLM, FUNC2(1), FUNC2(1));
        FUNC0(AT, FUNC2(2), FUNC1(LBRACKET));
        FUNC0(HASH, FUNC2(3), FUNC2(3));
        FUNC0(DLR, FUNC2(4), FUNC2(4));
        FUNC0(PERC, FUNC2(5), FUNC2(5));
        FUNC0(CIRC, FUNC2(6), FUNC1(EQUAL));
        FUNC0(AMPR, FUNC2(7), FUNC2(6));
        FUNC0(ASTR, FUNC2(8), FUNC2(QUOTE));
        FUNC0(LPRN, FUNC2(9), FUNC2(8));
        FUNC0(RPRN, FUNC2(0), FUNC2(9));
        FUNC0(LBRC, FUNC1(LBRACKET), FUNC5(FUNC2(RBRACKET), FUNC1(RBRACKET)));
        FUNC0(RBRC, FUNC1(RBRACKET), FUNC5(FUNC2(NONUS_HASH), FUNC1(NONUS_HASH)));
        FUNC0(LCBR, FUNC2(LBRACKET), FUNC2(RBRACKET));
        FUNC0(RCBR, FUNC2(RBRACKET), FUNC2(NONUS_HASH));
        FUNC0(GRV, FUNC1(GRAVE), FUNC5(FUNC2(EQUAL), FUNC2(LBRACKET)));
        FUNC0(BSLS, FUNC1(BSLASH), FUNC5(FUNC2(INT3), FUNC1(INT3)));
        FUNC0(PIPE, FUNC2(BSLASH), FUNC2(INT3));
        FUNC0(MINS, FUNC1(MINUS), FUNC5(FUNC2(INT1), FUNC1(MINUS)));
        FUNC0(UNDS, FUNC2(MINUS), FUNC2(INT1));
        FUNC0(EQL, FUNC1(EQUAL), FUNC5(FUNC2(SCOLON), FUNC2(MINUS)));
        FUNC0(PLUS, FUNC2(EQUAL), FUNC2(SCOLON));
        FUNC0(SCLN, FUNC1(SCOLON), FUNC5(FUNC3(QUOTE), FUNC1(SCOLON)));
        FUNC0(QUOT, FUNC1(QUOTE), FUNC5(FUNC2(2), FUNC2(7)));
        case JP:
            if (record->event.pressed) {
                LAYOUT_STATUS = JP_LAYOUT;
            }
            return false;
            break;
        case US:
            if (record->event.pressed) {
                LAYOUT_STATUS = US_LAYOUT;
            }
            return false;
            break;
        case SHIFT:
            if (record->event.pressed) {
                FUNC4(FUNC6(X_LSHIFT));
                SHIFT_PRESSED = true;
            } else {
                FUNC4(FUNC7(X_LSHIFT));
                SHIFT_PRESSED = false;
            }
            return false;
            break;
        case LOWER:
            if (record->event.pressed) {
                FUNC9(_LOWER);
            } else {
                FUNC8(_LOWER);
            }
            FUNC10(_LOWER, _RAISE, _ADJUST);
            return false;
            break;
        case RAISE:
            if (record->event.pressed) {
                FUNC9(_RAISE);
            } else {
                FUNC8(_RAISE);
            }
            FUNC10(_LOWER, _RAISE, _ADJUST);
            return false;
            break;
        case ADJUST:
            if (record->event.pressed) {
                FUNC9(_ADJUST);
            } else {
                FUNC8(_ADJUST);
            }
            return false;
            break;
    }
    return true;
}