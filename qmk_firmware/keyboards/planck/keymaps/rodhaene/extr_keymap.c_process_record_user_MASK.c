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
#define  BACKLIT 133 
#define  EXT_NUMPAD 132 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 131 
#define  NUMPAD 130 
 int PORTE ; 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _NUMPAD ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC8(_QWERTY);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC6(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC6(_RAISE);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(_RAISE);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC7(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
        PORTE &= ~(1<<6);
      } else {
        FUNC9(KC_RSFT);
        PORTE |= (1<<6);
      }
      return false;
      break;
    case NUMPAD:
      if(record->event.pressed) {
        FUNC5(_RAISE);
        FUNC5(_LOWER);
        FUNC5(_ADJUST);
        FUNC6(_NUMPAD);
        if (!FUNC2()) {
            FUNC1();
        }
        keymap_config.raw = FUNC3();
        keymap_config.nkro = 1;
        FUNC4(keymap_config.raw);
      }
      return false;
      break;
    case EXT_NUMPAD:
      if(record->event.pressed) {
        FUNC5(_NUMPAD);
      }
      return false;
      break;
  }
  return true;
}