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
#define  ADJUST 130 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  LOWER 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {

  switch (keycode) {
    case LOWER:
      if (record->event.pressed) {
        FUNC1(50);
        FUNC3(_LOWER);
      } else {
        FUNC0();
        FUNC2(_LOWER);
      }
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC1(100);
        FUNC3(_RAISE);
      } else {
        FUNC0();
        FUNC2(_RAISE);
      }
      break;
    case ADJUST:
      if (record->event.pressed) {
        FUNC3(_ADJUST);
      } else {
        FUNC2(_ADJUST);
      }
      break;
    default:
      return true;
  }

  return false;
}