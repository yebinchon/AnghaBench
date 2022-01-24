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
#define  ABOVE 152 
#define  BACKLIT 151 
#define  COLEMAK 150 
#define  CONFUSED 149 
#define  CRY 148 
#define  DVORAK 147 
#define  EXT_PLV 146 
#define  FLIP 145 
#define  FNGLEFT 144 
#define  FNGRIGHT 143 
#define  FROWN 142 
#define  GRIN 141 
#define  HEART 140 
#define  JOY 139 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LLAP 138 
#define  LOWER 137 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 136 
#define  QWERTY 135 
#define  RAISE 134 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  SHIT 133 
#define  SHRUG 132 
#define  THMBDN 131 
#define  THMBUP 130 
#define  TOUNGE 129 
#define  WINK 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _EMOJI ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plover_gb_song ; 
 int /*<<< orphan*/  plover_song ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC15(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC9("mode just switched to qwerty and this is a huge string\n");
        FUNC11(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC11(_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC11(_DVORAK);
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
        FUNC10(KC_RSFT);
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
          PLAY_SONG(plover_song);
        #endif
        FUNC7(_RAISE);
        FUNC7(_LOWER);
        FUNC7(_ADJUST);
        FUNC7(_EMOJI);
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
          PLAY_SONG(plover_gb_song);
        #endif
        FUNC7(_PLOVER);
      }
      return false;
      break;
    case FLIP:
      if (record->event.pressed) {
        FUNC1("&fliptable;");
      }
      return false;
      break;
    case CONFUSED:
      if (record->event.pressed) {
        FUNC1(":-\\");
      }
      return false;
      break;
    case SHIT:
      if (record->event.pressed) {
        FUNC1("&shit; ");
      }
      return false;
      break;
    case CRY:
      if (record->event.pressed) {
        FUNC1(":'-( ");
      }
      return false;
      break;
    case LLAP:
      if (record->event.pressed) {
        FUNC1("&llap; ");
      }
      return false;
      break;
    case GRIN:
      if (record->event.pressed) {
        FUNC1(":-D ");
      }
      return false;
      break;
    case TOUNGE:
      if (record->event.pressed) {
        FUNC1(":-P ");
      }
      return false;
      break;
    case JOY:
      if (record->event.pressed) {
        FUNC1(":-) ");
      }
      return false;
      break;
    case FROWN:
      if (record->event.pressed) {
        FUNC1(":-( ");
      }
      return false;
      break;
    case HEART:
      if (record->event.pressed) {
        FUNC1("<3 ");
      }
      return false;
      break;
    case SHRUG:
      if (record->event.pressed) {
        FUNC1("&shrug; ");
      }
      return false;
      break;
    case THMBUP:
      if (record->event.pressed) {
        FUNC1("&thumbup; ");
      }
      return false;
      break;
    case THMBDN:
      if (record->event.pressed) {
        FUNC1("&thumbdown; ");
      }
      return false;
      break;
    case FNGLEFT:
      if (record->event.pressed) {
        FUNC1("&fingerleft; ");
      }
      return false;
      break;
    case FNGRIGHT:
      if (record->event.pressed) {
        FUNC1("&fingerright; ");
      }
      return false;
      break;
    case WINK:
      if (record->event.pressed) {
        FUNC1(";-) ");
      }
      return false;
      break;
    case ABOVE:
      if (record->event.pressed) {
        FUNC1("&above; ");
      }
      return false;
      break;
  }
  return true;
}