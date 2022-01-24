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
#define  BACKLIT 138 
#define  BACKTOG 137 
#define  COPY 136 
#define  CUT 135 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DVRK 134 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  KC_V ; 
 int /*<<< orphan*/  KC_X ; 
#define  LOWER 133 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PASTE 132 
#define  RAISE 131 
#define  SDRK 130 
#define  SLWER 129 
#define  SRAIS 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _DVRK ; 
 unsigned long _LOWER ; 
 unsigned long _RAISE ; 
 unsigned long _SDRK ; 
 unsigned long _SLWER ; 
 unsigned long _SRAIS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case DVRK:
      if (record->event.pressed) {
        FUNC8(1UL<<_DVRK);
        FUNC7(_DVRK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC7(_LOWER);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC6(_LOWER);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC7(_RAISE);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC6(_RAISE);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case SDRK:
      if (record->event.pressed) {
        FUNC8(1UL<<_SDRK);
        FUNC7(_SDRK);
      }
      return false;
      break;
    case SLWER:
      if (record->event.pressed) {
        FUNC7(_SLWER);
        FUNC11(_SLWER, _SRAIS, _ADJUST);
      } else {
        FUNC6(_SLWER);
        FUNC11(_SLWER, _SRAIS, _ADJUST);
      }
      return false;
      break;
    case SRAIS:
      if (record->event.pressed) {
        FUNC7(_SRAIS);
        FUNC11(_SLWER, _SRAIS, _ADJUST);
      } else {
        FUNC6(_SRAIS);
        FUNC11(_SLWER, _SRAIS, _ADJUST);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC9(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
      } else {
        FUNC10(KC_RSFT);
      }
      return false;
      break;
    case BACKTOG:
      if (record->event.pressed) {
        #ifdef BACKLIGHT_ENABLE
          backlight_toggle();
        #endif
      }
      return false;
      break;
    case CUT: //cut macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_X), FUNC3(KC_LCTL), END );
    case COPY: // copy macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_C), FUNC3(KC_LCTL), END );
    case PASTE: // paste macro
	    return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_V), FUNC3(KC_LCTL), END );
  }
  return true;
}