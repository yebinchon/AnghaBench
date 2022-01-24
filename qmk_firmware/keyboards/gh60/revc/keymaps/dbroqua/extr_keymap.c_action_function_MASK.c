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
#define  RGBLED_DECREASE_HUE 135 
#define  RGBLED_DECREASE_SAT 134 
#define  RGBLED_DECREASE_VAL 133 
#define  RGBLED_INCREASE_HUE 132 
#define  RGBLED_INCREASE_SAT 131 
#define  RGBLED_INCREASE_VAL 130 
#define  RGBLED_STEP_MODE 129 
#define  RGBLED_TOGGLE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch (id) {
    case RGBLED_TOGGLE:
      if (record->event.pressed) {
        FUNC7();
      }
      break;
    case RGBLED_INCREASE_HUE:
      if (record->event.pressed) {
        FUNC3();
      }
      break;
    case RGBLED_DECREASE_HUE:
      if (record->event.pressed) {
        FUNC0();
      }
      break;
    case RGBLED_INCREASE_SAT:
      if (record->event.pressed) {
        FUNC4();
      }
      break;
    case RGBLED_DECREASE_SAT:
      if (record->event.pressed) {
        FUNC1();
      }
      break;
    case RGBLED_INCREASE_VAL:
      if (record->event.pressed) {
        FUNC5();
      }
      break;
    case RGBLED_DECREASE_VAL:
      if (record->event.pressed) {
        FUNC2();
      }
      break;
    case RGBLED_STEP_MODE:
      if (record->event.pressed) {
        FUNC6();
      }
      break;
  }
}