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
#define  ABOVE 152 
#define  ADJUST 151 
#define  BL_STEP 150 
#define  BL_TOGG 149 
#define  COLEMAK 148 
#define  CONFUSED 147 
#define  CRY 146 
#define  DVORAK 145 
#define  FLIP 144 
#define  FNGLEFT 143 
#define  FNGRIGHT 142 
#define  FROWN 141 
#define  GRIN 140 
#define  HEART 139 
#define  JOY 138 
#define  LLAP 137 
#define  LOWER 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_qwerty, false, 0);
        #endif
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_colemak, false, 0);
        #endif
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_dvorak, false, 0);
        #endif
      }
      return false;
      break;
    case LOWER:
        if (record->event.pressed) {
            FUNC4(_LOWER);
            FUNC6(_LOWER, _RAISE, _ADJUST);
        } else {
            FUNC3(_LOWER);
            FUNC6(_LOWER, _RAISE, _ADJUST);
        }
        return false;
        break;
    case RAISE:
        if (record->event.pressed) {
            FUNC4(_RAISE);
            FUNC6(_LOWER, _RAISE, _ADJUST);
        } else {
            FUNC3(_RAISE);
            FUNC6(_LOWER, _RAISE, _ADJUST);
        }
        return false;
        break;
    case ADJUST:
        // FIXME add RGB feedback
        if (record->event.pressed) {
            FUNC4(_ADJUST);
        } else {
            FUNC3(_ADJUST);
        }
        return false;
        break;
    case BL_TOGG:
#ifdef ISSI_ENABLE
        if (record->event.pressed) {
            print("Enabling backlight\n");
            issi_init();
        }
#endif
        return false;
        break;
    case BL_STEP:
        if (record->event.pressed) {
            FUNC5("Stepping backlight\n");

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
      // register_codeturn false;
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