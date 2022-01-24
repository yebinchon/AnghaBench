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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  BL_FLICKER 130 
#define  LOWER 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 scalar_t__ flicker_enable ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {

  // handle the _ADJUST layer and custom keycodes:
  switch (keycode) {
    case LOWER:
      if (record->event.pressed) {
        FUNC4(_LOWER);
        FUNC5(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_LOWER);
        FUNC5(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC4(_RAISE);
        FUNC5(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_RAISE);
        FUNC5(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
#ifdef BACKLIGHT_ENABLE
    case BL_FLICKER:
      if (record->event.pressed) {
        flicker_toggle();
      }
      return false;
      break;
#endif
  } // end switch case over custom keycodes

#ifdef BACKLIGHT_ENABLE
  if (flicker_enable) {
    if (record->event.pressed) {
      flicker_keydown();
    } else {
      flicker_keyup();
    }
  }
#endif

  return true;
}