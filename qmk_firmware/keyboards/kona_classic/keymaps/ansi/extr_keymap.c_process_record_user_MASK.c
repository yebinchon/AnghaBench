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
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_GRV ; 
 int MODS_SHIFT_GUI_MASK ; 
#define  SFT_ESC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case SFT_ESC:
      if (record->event.pressed) {
        if (FUNC2() & MODS_SHIFT_GUI_MASK) {
          FUNC0(KC_GRV);
          FUNC3();
        } else {
          FUNC0(KC_ESC);
          FUNC3();
        }
      } else {
        if (FUNC2() & MODS_SHIFT_GUI_MASK) {
          FUNC1(KC_GRV);
          FUNC3();
        } else {
          FUNC1(KC_ESC);
          FUNC3();
        }
      }

      return false;

    default:
      return true;
  }
}