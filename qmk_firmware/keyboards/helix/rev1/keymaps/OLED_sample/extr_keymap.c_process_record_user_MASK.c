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
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  ADJUST 136 
#define  BACKLIT 135 
#define  COLEMAK 134 
#define  DVORAK 133 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 132 
#define  M_SAMPLE 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QWERTY 130 
#define  RAISE 129 
 int /*<<< orphan*/  RGBLIGHT_MODE_SNAKE ; 
#define  RGB_MOD 128 
 int /*<<< orphan*/  RGB_current_mode ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int TOG_STATUS ; 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _COLEMAK ; 
 unsigned long _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_qwerty);
        #endif
        FUNC5(1UL<<_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_colemak);
        #endif
        FUNC5(1UL<<_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC5(1UL<<_DVORAK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
          //not sure how to have keyboard check mode and set it to a variable, so my work around
          //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          FUNC7(RGBLIGHT_MODE_SNAKE + 1);
        }
        FUNC4(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(RGB_current_mode);   // revert RGB to initial mode prior to RGB mode change
        TOG_STATUS = false;
        FUNC3(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        //not sure how to have keyboard check mode and set it to a variable, so my work around
        //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          FUNC7(RGBLIGHT_MODE_SNAKE);
        }
        FUNC4(_RAISE);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(RGB_current_mode);  // revert RGB to initial mode prior to RGB mode change
        FUNC3(_RAISE);
        TOG_STATUS = false;
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case ADJUST:
        if (record->event.pressed) {
          FUNC4(_ADJUST);
        } else {
          FUNC3(_ADJUST);
        }
        return false;
        break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC6(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
      } else {
        FUNC9(KC_RSFT);
      }
      return false;
      break;
      //led operations - RGB mode change now updates the RGB_current_mode to allow the right RGB mode to be set after reactive keys are released
    case RGB_MOD:
      if (record->event.pressed) {
        FUNC7(RGB_current_mode);
        FUNC8();
        RGB_current_mode = rgblight_config.mode;
      }
      return false;
      break;
    case M_SAMPLE:
      if (record->event.pressed) {
        FUNC1("hello world");
      }
      return false;
  }
  return true;
}