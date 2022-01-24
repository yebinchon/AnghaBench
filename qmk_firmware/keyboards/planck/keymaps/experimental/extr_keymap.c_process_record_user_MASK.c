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
#define  BACKLIT 143 
#define  COLEMAK 142 
#define  DVORAK 141 
#define  EXT_PLV 140 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 138 
#define  QWERTY 137 
#define  RAISE 136 
#define  RGBLED_DECREASE_HUE 135 
#define  RGBLED_DECREASE_SAT 134 
#define  RGBLED_DECREASE_VAL 133 
#define  RGBLED_INCREASE_HUE 132 
#define  RGBLED_INCREASE_SAT 131 
#define  RGBLED_INCREASE_VAL 130 
#define  RGBLED_STEP_MODE 129 
#define  RGBLED_TOGGLE 128 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _COLEMAK ; 
 unsigned long _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC19(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case QWERTY:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_qwerty);
            #endif
            FUNC6(1UL<<_QWERTY);
          }
          break;
      return false;
        case COLEMAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC6(1UL<<_COLEMAK);
          }
          break;
      return false;
        case DVORAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC6(1UL<<_DVORAK);
          }
          break;
      return false;
        case LOWER:
          if (record->event.pressed) {
            FUNC5(_LOWER);
            #ifdef BACKLIGHT_ENABLE
                breathing_period_set(2);
                breathing_pulse();
            #endif
            FUNC18(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC4(_LOWER);
            FUNC18(_LOWER, _RAISE, _ADJUST);
          }
          break;
      return false;
        case RAISE:
          if (record->event.pressed) {
            FUNC5(_RAISE);
            #ifdef BACKLIGHT_ENABLE
                breathing_period_set(2);
                breathing_pulse();
            #endif
            FUNC18(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC4(_RAISE);
            FUNC18(_LOWER, _RAISE, _ADJUST);
          }
          break;
      return false;
        case BACKLIT:
          if (record->event.pressed) {
            FUNC7(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
          } else {
            FUNC17(KC_RSFT);
          }
        break;
      return false;
        case PLOVER:
          if (!record->event.pressed) {
            #ifdef AUDIO_ENABLE
              stop_all_notes();
              PLAY_SONG(tone_plover);
            #endif
            FUNC5(_PLOVER);
          }
        break;
      return false;
        case EXT_PLV:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_plover_gb);
            #endif
            FUNC4(_PLOVER);
          }
        break;
      return false;

    case RGBLED_TOGGLE:
      //led operations
      if (record->event.pressed) {
        FUNC15();
      }
      return false;
      break;
    case RGBLED_INCREASE_HUE:
      if (record->event.pressed) {
        FUNC11();
      }
      return false;
      break;
    case RGBLED_DECREASE_HUE:
      if (record->event.pressed) {
        FUNC8();
      }
      return false;
      break;
    case RGBLED_INCREASE_SAT:
      if (record->event.pressed) {
        FUNC12();
      }
      return false;
      break;
    case RGBLED_DECREASE_SAT:
      if (record->event.pressed) {
        FUNC9();
      }
      return false;
      break;
    case RGBLED_INCREASE_VAL:
      if (record->event.pressed) {
        FUNC13();
      }
      return false;
      break;
    case RGBLED_DECREASE_VAL:
      if (record->event.pressed) {
        FUNC10();
      }
      return false;
      break;
    case RGBLED_STEP_MODE:
      if (record->event.pressed) {
        FUNC14();
      }
      return false;
      break;


      }
  return true;
}