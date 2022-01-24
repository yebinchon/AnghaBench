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
#define  BACKLIT 134 
#define  COLEMAK 133 
#define  DVORAK 132 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 131 
#define  NUMPAD 130 
 int PORTE ; 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _NUMPAD ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case QWERTY:
          if (record->event.pressed) {
            FUNC4(_QWERTY);
          }
          return false;
          break;
        case COLEMAK:
          if (record->event.pressed) {
            FUNC4(_COLEMAK);
          }
          return false;
          break;
        case DVORAK:
          if (record->event.pressed) {
            FUNC4(_DVORAK);
          }
          return false;
          break;
        case NUMPAD:
          if (record->event.pressed) {
            FUNC4(_NUMPAD);
          }
          return false;
          break;
        case LOWER:
          if (record->event.pressed) {
            FUNC2(_LOWER);
            FUNC6(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC1(_LOWER);
            FUNC6(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case RAISE:
          if (record->event.pressed) {
            FUNC2(_RAISE);
            FUNC6(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC1(_RAISE);
            FUNC6(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case BACKLIT:
          if (record->event.pressed) {
            FUNC3(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
            PORTE &= ~(1<<6);
          } else {
            FUNC5(KC_RSFT);
            PORTE |= (1<<6);
          }
          return false;
          break;
      }
    return true;
}