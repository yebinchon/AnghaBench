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
#define  LOWER 131 
#define  MOVEMENT 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MOVEMENT ; 
 int /*<<< orphan*/  _NUMPAD ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC2(_QWERTY);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC1(_LOWER);
	FUNC3(_LOWER, _MOVEMENT, _NUMPAD);
      } else {
        FUNC0(_LOWER);
	FUNC3(_LOWER, _MOVEMENT, _NUMPAD);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC1(_RAISE);
      } else {
        FUNC0(_RAISE);
      }
      return false;
      break;
    case MOVEMENT:
      if (record->event.pressed) {
        FUNC1(_MOVEMENT);
	FUNC3(_LOWER, _MOVEMENT, _NUMPAD);
      } else {
        FUNC0(_MOVEMENT);
	FUNC3(_LOWER, _MOVEMENT, _NUMPAD);
      }
      return false;
      break;
  }
  return true;
}