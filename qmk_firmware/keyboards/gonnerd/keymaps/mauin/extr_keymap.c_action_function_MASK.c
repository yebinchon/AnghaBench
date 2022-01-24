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
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  ESC_GRV 128 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_GRV ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt) {
  static uint8_t esc_grv_mask;
  switch (id) {
    case ESC_GRV:
      esc_grv_mask = FUNC3() & FUNC0(KC_LGUI);
      if (record->event.pressed) {
        if (esc_grv_mask) {
          FUNC1(KC_GRV);
          FUNC4();
        } else {
          FUNC1(KC_ESC);
          FUNC4();
        }
      } else {
        if (esc_grv_mask) {
          FUNC2(KC_GRV);
          FUNC4();
        } else {
          FUNC2(KC_ESC);
          FUNC4();
        }
      }
      break;
  }
}