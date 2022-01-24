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
#define  COLEMAK 133 
#define  DVORAK 132 
#define  FUNC 131 
#define  FUNC2 130 
#define  QWERTY 129 
#define  RGB 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _FUNC ; 
 int /*<<< orphan*/  _FUNC2 ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RGB ; 
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
    case COLEMAK:
      if (record->event.pressed) {
        FUNC2(_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC2(_DVORAK);
      }
      return false;
      break;
    case FUNC:
      if (record->event.pressed) {
        FUNC1(_FUNC);
        FUNC3(_FUNC, _FUNC2, _ADJUST);
      } else {
        FUNC0(_FUNC);
        FUNC3(_FUNC, _FUNC2, _ADJUST);
      }
      return false;
      break;
    case FUNC2:
      if (record->event.pressed) {
        FUNC1(_FUNC2);
        FUNC3(_FUNC, _FUNC2, _ADJUST);
      } else {
        FUNC0(_FUNC2);
        FUNC3(_FUNC, _FUNC2, _ADJUST);
      }
      return false;
      break;
    case RGB:
      if (record->event.pressed) {
        FUNC1(_RGB);
      } else {
        FUNC0(_RGB);
      }
      return false;
      break;
  }
  return true;
}