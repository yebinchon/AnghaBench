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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  FUN_LAY 131 
#define  MOU_TOG 130 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
#define  WIN_KEY 129 
#define  WIN_LCK 128 
 int /*<<< orphan*/  X_LGUI ; 
 int /*<<< orphan*/  _FUNC ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  keyboard_state ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    // acts like a momentary function layer press
    case FUN_LAY:
      if (record->event.pressed) { 
        FUNC8(_FUNC);
        if (FUNC0(keyboard_state, 1)) {
          FUNC8(_MOUSE);
        } 
        else {
          FUNC7(_MOUSE);
        }
        // turns on function layer status
        FUNC3(keyboard_state, 0);
      }
      // key released
      else {
        FUNC7(_FUNC);
        FUNC7(_MOUSE);
        // turns off function layer status
        FUNC1(keyboard_state, 0);
      }
      break;

    case MOU_TOG:
      if(record->event.pressed) {
        // toggles navigation layer state
        FUNC6(keyboard_state, 1);

        // if FN is pressed down while hitting this key, the correct layer will be updated,
        // so that the FN key doesn't need to be pressed down again to start using the functionality
        if (FUNC0(keyboard_state, 0)) {
          if (FUNC0(keyboard_state, 1)) {
            FUNC8(_MOUSE);
          }
          else {
            FUNC7(_MOUSE);
          } 
        }
      }
      break;

    case WIN_LCK:
      if (record->event.pressed) {
        // toggles windows key lock state
        FUNC6(keyboard_state, 2);
      }
      break;

    // uses seperate WIN_KEY so that WIN_LCK does not affect Mac Layer's KC_LGUI
    case WIN_KEY:
      // checks if windows key lock is off to allow key to be pressed
      if (!FUNC0(keyboard_state, 2)) {
        if (record->event.pressed) {
          FUNC2(FUNC4(X_LGUI));
          return false;
        }
        // key released
        else { 
          FUNC2(FUNC5(X_LGUI));
          return false;
        }
      }
      break;
  }
  return true;
}