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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  ADJUST 136 
#define  LOWER 135 
#define  QWERTY 134 
#define  RAISE 133 
#define  SOLENOID_BUZZ_OFF 132 
#define  SOLENOID_BUZZ_ON 131 
#define  SOLENOID_DWELL_MINUS 130 
#define  SOLENOID_DWELL_PLUS 129 
#define  SOLENOID_TOG 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  #ifdef SOLENOID_ENABLE
    if (record->event.pressed) {
      solenoid_fire();
    }
  #endif
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC2(_QWERTY);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC1(_LOWER);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_LOWER);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC1(_RAISE);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_RAISE);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case ADJUST:
      if (record->event.pressed) {
        FUNC1(_ADJUST);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_ADJUST);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case SOLENOID_TOG:
      #ifdef SOLENOID_ENABLE
        if (record->event.pressed) {
          solenoid_toggle();
        }
      #endif
      break;
    case SOLENOID_DWELL_MINUS:
      #ifdef SOLENOID_ENABLE
        if (record->event.pressed) {
          solenoid_dwell_minus();
        }
      #endif
      break;
    case SOLENOID_DWELL_PLUS:
      #ifdef SOLENOID_ENABLE
        if (record->event.pressed) {
          solenoid_dwell_plus();
        }
        #endif
      break;
    case SOLENOID_BUZZ_ON:
      #ifdef SOLENOID_ENABLE
        if (record->event.pressed) {
          solenoid_buzz_on();
        }
      #endif
      break;
    case SOLENOID_BUZZ_OFF:
      #ifdef SOLENOID_ENABLE
        if (record->event.pressed) {
          solenoid_buzz_off();
        }
      #endif
      break;
  }
  return true;
}