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
#define  ADJUST 132 
#define  LOWER 131 
#define  MKITPNK 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
    if (!FUNC3(keycode, record))
        return false;

    switch (keycode) {
      case QWERTY:
          if (record->event.pressed) {
              FUNC4(_QWERTY);
          }
          return false;
          break;
      case LOWER:
          if (record->event.pressed) {
              FUNC1(_LOWER);
              FUNC5(_LOWER, _RAISE, _ADJUST);
          } else {
              FUNC0(_LOWER);
              FUNC5(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
      case RAISE:
          if (record->event.pressed) {
              FUNC1(_RAISE);
              FUNC5(_LOWER, _RAISE, _ADJUST);
          } else {
              FUNC0(_RAISE);
              FUNC5(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
      case ADJUST:
          if (record->event.pressed) {
              FUNC1(_ADJUST);
          } else {
              FUNC0(_ADJUST);
          }
          return false;
          break;
      case MKITPNK:
          if (record->event.pressed)
              FUNC2();
          return false;
          break;
    }
    return true;
}