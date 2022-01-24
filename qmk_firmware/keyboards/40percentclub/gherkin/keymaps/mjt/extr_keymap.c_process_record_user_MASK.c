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
#define  BACKLIT 134 
#define  EXT_PLV 133 
 int /*<<< orphan*/  KC_POWER ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  MACSLEEP 132 
#define  NUMBERS 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 130 
#define  QWERTY 129 
#define  SYMBOLS 128 
 unsigned long _ADJUST ; 
 unsigned long _NUMBERS ; 
 unsigned long _PLOVER ; 
 unsigned long _QWERTY ; 
 unsigned long _SYMBOLS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_qwerty);
        #endif
        FUNC8(1UL<<_QWERTY);
      }
      return false;
      break;
    case NUMBERS:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC8(1UL<<_NUMBERS);
      }
      return false;
      break;
    case SYMBOLS:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_colemak);
        #endif
        FUNC8(1UL<<_SYMBOLS);
      }
      return false;
      break;
    case PLOVER:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          stop_all_notes();
          PLAY_SONG(tone_plover);
        #endif
        FUNC6(_NUMBERS);
        FUNC6(_SYMBOLS);
        FUNC6(_ADJUST);
        FUNC7(_PLOVER);
        if (!FUNC3()) {
            FUNC2();
        }
        keymap_config.raw = FUNC4();
        keymap_config.nkro = 1;
        FUNC5(keymap_config.raw);
      }
      return false;
      break;
    case EXT_PLV:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_plover_gb);
        #endif
        FUNC6(_PLOVER);
      }
      return false;
      break;
    case MACSLEEP:
      if (record->event.pressed) {
          // ACTION_MODS_KEY(MOD_LCTL | MOD_LSFT, KC_POWER);
          FUNC9(KC_RSFT);
          FUNC9(KC_RCTL);
          FUNC9(KC_POWER);
          FUNC11(KC_POWER);
          FUNC11(KC_RCTL);
          FUNC11(KC_RSFT);
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
        FUNC11(KC_RSFT);
      }
      return false;
      break;
    }
    return true;
}