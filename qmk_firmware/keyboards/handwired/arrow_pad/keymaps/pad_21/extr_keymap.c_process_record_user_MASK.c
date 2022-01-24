#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int count; } ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_2__ tap; TYPE_1__ event; } ;
typedef  TYPE_3__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_PENT ; 
 int /*<<< orphan*/  KC_X ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  M_COPY 130 
#define  M_CTALT 129 
#define  M_SHFCT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

bool FUNC5(uint16_t keycode, keyrecord_t * record) {
  // MACRODOWN only works in this function
  switch (keycode) {

  case M_COPY:
    if (record->event.pressed) {
      FUNC1(KC_LCTL);
      if (record->tap.count == 1) {
        FUNC1(KC_C);
        FUNC3(KC_C);
      } else if (record->tap.count == 2) {
        FUNC1(KC_X);
        FUNC3(KC_X);
      }
      FUNC3(KC_LCTL);
    }
    break;

  case M_SHFCT:
    if (record->event.pressed) {
      if (record->tap.count <= 2) FUNC2(FUNC0(KC_LSFT));
      if (record->tap.count == 2) FUNC2(FUNC0(KC_LCTL));
      if (record->tap.count == 3) FUNC1(KC_PENT);;
    } else {
      FUNC4(FUNC0(KC_LSFT) | FUNC0(KC_LCTL));
      FUNC3(KC_PENT);
    }
    break;

  case M_CTALT:
    if (record->event.pressed) {
      if (record->tap.count < 2) FUNC2(FUNC0(KC_LCTL));
      if (record->tap.count >= 2) FUNC2(FUNC0(KC_LALT));
    } else {
      FUNC4(FUNC0(KC_LCTL) | FUNC0(KC_LALT));
    }
    break;
  }

  return true;
}