#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;

/* Variables and functions */
#define  BACKLIT 134 
#define  COLEMAK 133 
#define  DEMOMACRO 132 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 131 
#define  QWERTY 130 
#define  RAISE 129 
 int RGB_INIT ; 
#define  RGB_MOD 128 
 int RGB_current_mode ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TOG_STATUS ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC7(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC7(_COLEMAK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
          //not sure how to have keyboard check mode and set it to a variable, so my work around
          //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (RGB_INIT) {} else {
          RGB_current_mode = rgblight_config.mode;
          RGB_INIT = true;
        }
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          FUNC5(16);
        }
        FUNC3(_LOWER);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(RGB_current_mode);   // revert RGB to initial mode prior to RGB mode change
        TOG_STATUS = false;
        FUNC2(_LOWER);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        //not sure how to have keyboard check mode and set it to a variable, so my work around
        //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (RGB_INIT) {} else {
          RGB_current_mode = rgblight_config.mode;
          RGB_INIT = true;
        }
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          FUNC5(15);
        }
        FUNC3(_RAISE);
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(RGB_current_mode);  // revert RGB to initial mode prior to RGB mode change
        FUNC2(_RAISE);
        TOG_STATUS = false;
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC4(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
      } else {
        FUNC8(KC_RSFT);
      }
      return false;
      break;
    case RGB_MOD:
      //led operations - RGB mode change now updates the RGB_current_mode to allow the right RGB mode to be set after reactive keys are released
      if (record->event.pressed) {
        FUNC5(RGB_current_mode);
        FUNC6();
        RGB_current_mode = rgblight_config.mode;
      }
      return false;
      break;
    case DEMOMACRO:
      if (record->event.pressed) {
        FUNC0("hello world");
      }
      return false;
      break;
  }
  return true;
}