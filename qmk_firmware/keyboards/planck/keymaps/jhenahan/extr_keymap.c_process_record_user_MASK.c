#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  DEAD 135 
#define  EXT_PLV 134 
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_O ; 
 int /*<<< orphan*/  KC_P ; 
 int /*<<< orphan*/  KC_R ; 
 int /*<<< orphan*/  KC_T ; 
 int /*<<< orphan*/  KC_W ; 
#define  LOWER 133 
 int /*<<< orphan*/  ONESHOT_PRESSED ; 
 int /*<<< orphan*/  ONESHOT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 132 
#define  QWERTY 131 
#define  RAISE 130 
#define  TOG_PLV 129 
#define  WORKMAN 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _DEAD ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 unsigned long _WORKMAN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  tone_workman ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC14(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case WORKMAN:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_workman);
        #endif
        FUNC9(1UL<<_WORKMAN);
      }
      return false;
      break;
    case DEAD:
      if (record->event.pressed) {
        FUNC8(_DEAD);
        FUNC11(_DEAD, ONESHOT_START);
        FUNC2(ONESHOT_PRESSED);
      }
      return false;
      break;
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_qwerty);
        #endif
        FUNC9(1UL<<_QWERTY);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC8(_LOWER);
        FUNC13(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(_LOWER);
        FUNC13(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC8(_RAISE);
        FUNC13(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(_RAISE);
        FUNC13(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case PLOVER:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          stop_all_notes();
          PLAY_SONG(tone_plover);
        #endif
        FUNC7(_RAISE);
        FUNC7(_LOWER);
        FUNC7(_ADJUST);
        FUNC8(_PLOVER);
        if (!FUNC4()) {
            FUNC3();
        }
        keymap_config.raw = FUNC5();
        keymap_config.nkro = 1;
        FUNC6(keymap_config.raw);
      }
      return false;
      break;
    case EXT_PLV:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_plover_gb);
        #endif
        FUNC7(_PLOVER);
      }
      return false;
      break;
  case TOG_PLV:
    if (record->event.pressed) {
      FUNC10(KC_R);
      FUNC10(KC_W);
      FUNC10(KC_T);
      FUNC10(KC_C);
      FUNC10(KC_P);
      FUNC10(KC_O);
      FUNC1();
    }
    return false;
    break;
  }
  return true;
}