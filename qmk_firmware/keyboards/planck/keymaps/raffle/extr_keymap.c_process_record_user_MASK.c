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
#define  BACKLIT 132 
 int /*<<< orphan*/  KC_RSFT ; 
 int PORTE ; 
#define  QWERTY 131 
#define  R_ASGN 130 
#define  R_CMLN 129 
#define  R_PIPE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC2("mode just switched to qwerty and this is a huge string\n");
        FUNC4(_QWERTY);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC3(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
        #ifdef KEYBOARD_planck_rev5
          PORTE &= ~(1<<6);
        #endif
      } else {
        FUNC5(KC_RSFT);
        #ifdef KEYBOARD_planck_rev5
          PORTE |= (1<<6);
        #endif
      }
      return false;
      break;
    // my macros
    case R_ASGN:
      if (record->event.pressed) {
	FUNC0(" <- ");
      }
      return false;
      break;
    case R_PIPE:
      if (record->event.pressed) {
	FUNC0(" %>%\n");
      }
      return false;
      break;
    case R_CMLN:
      if (record->event.pressed) {
	FUNC0("################################################################################");
      }
      return false;
      break;
  }
  return true;
}