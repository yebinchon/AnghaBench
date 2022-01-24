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
#define  COLEMAK 135 
#define  DVORAK 134 
#define  LOWER 133 
#define  NAV 132 
#define  NUM 131 
#define  QWERTY 130 
#define  RAISE 129 
#define  WM 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _NAV ; 
 int /*<<< orphan*/  _NUM ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  _WM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC2("mode just switched to qwerty and this is a huge string\n");
        FUNC3(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC3(_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC3(_DVORAK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC1(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC1(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC0(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case NUM:
      if (record->event.pressed) {
        FUNC1(_NUM);
      } else {
        FUNC0(_NUM);
      }
      return false;
      break;
    case NAV:
      if (record->event.pressed) {
        FUNC1(_NAV);
      } else {
        FUNC0(_NAV);
      }
      return false;
      break;
    case WM:
      if (record->event.pressed) {
        FUNC1(_WM);
      } else {
        FUNC0(_WM);
      }
      return false;
      break;
    }
  return true;
}