#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  LOWER 134 
#define  MFNC 133 
#define  MFNC2 132 
#define  MLWR 131 
#define  MRSE 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _FUNC ; 
 int /*<<< orphan*/  _FUNC2 ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MFNC ; 
 int /*<<< orphan*/  _MFNC2 ; 
 int /*<<< orphan*/  _MLWR ; 
 int /*<<< orphan*/  _MRSE ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {

  if (!FUNC3(keycode, record)) {
      return false;
  }

   switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC2(1UL<<_QWERTY);
      }
      return false;
    case LOWER:
      if (record->event.pressed) {
        FUNC1(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case RAISE:
      if (record->event.pressed) {
        FUNC1(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case MLWR:
      if (record->event.pressed) {
        FUNC1(_LOWER);
        FUNC1(_MLWR);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_LOWER);
        FUNC0(_MLWR);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case MRSE:
      if (record->event.pressed) {
        FUNC1(_RAISE);
        FUNC1(_MRSE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_RAISE);
        FUNC0(_MRSE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case MFNC:
      if (record->event.pressed) {
        FUNC1(_FUNC);
        FUNC1(_MFNC);
      } else {
        FUNC0(_FUNC);
        FUNC0(_MFNC);
      }
      return false;
    case MFNC2:
      if (record->event.pressed) {
        FUNC1(_FUNC2);
        FUNC1(_MFNC2);
      } else {
        FUNC0(_FUNC2);
        FUNC0(_MFNC2);
      }
      return false;
    }
  return true;
}