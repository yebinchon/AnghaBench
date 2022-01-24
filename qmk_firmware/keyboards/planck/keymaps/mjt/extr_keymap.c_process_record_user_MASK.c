#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  BACKLIT 134 
 int DYN_REC_STOP ; 
#define  EXT_PLV 133 
 int /*<<< orphan*/  KC_POWER ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 132 
#define  MACSLEEP 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  PLOVER 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _DYN ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ keymap_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC15(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = (keycode == FUNC0(_DYN) ? DYN_REC_STOP : keycode);
  if (!FUNC10(macro_kc, record)) {
    return false;
  }
  switch (keycode) {
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
        FUNC14(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(_LOWER);
        FUNC14(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC8(_RAISE);
        FUNC14(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC7(_RAISE);
        FUNC14(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC11(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
      } else {
        FUNC13(KC_RSFT);
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
    case MACSLEEP:
      if (record->event.pressed) {
          // ACTION_MODS_KEY(MOD_LCTL | MOD_LSFT, KC_POWER);
          FUNC11(KC_RSFT);
          FUNC11(KC_RCTL);
          FUNC11(KC_POWER);
          FUNC13(KC_POWER);
          FUNC13(KC_RCTL);
          FUNC13(KC_RSFT);
      }
      return false;
      break;
  }
  return true;
}