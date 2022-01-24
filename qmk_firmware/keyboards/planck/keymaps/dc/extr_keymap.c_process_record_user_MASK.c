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
#define  DVORAK 130 
#define  NUMBERS 129 
#define  SYMBOLS 128 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _NUMBERS ; 
 int /*<<< orphan*/  _SPECIAL ; 
 int /*<<< orphan*/  _SYMBOLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
      case DVORAK:
        if (record->event.pressed) {
          FUNC2(_DVORAK);
        }
        return false;
        break;
      case SYMBOLS:
        if (record->event.pressed) {
          FUNC1(_SYMBOLS);
          FUNC3(_NUMBERS, _SYMBOLS, _SPECIAL);
        } else {
          FUNC0(_SYMBOLS);
          FUNC3(_NUMBERS, _SYMBOLS, _SPECIAL);
        }
        return false;
        break;
      case NUMBERS:
        if (record->event.pressed) {
          FUNC1(_NUMBERS);
          FUNC3(_NUMBERS, _SYMBOLS, _SPECIAL);
        } else {
          FUNC0(_NUMBERS);
          FUNC3(_NUMBERS, _SYMBOLS, _SPECIAL);
        }
        return false;
        break;
    }
    return true;
}