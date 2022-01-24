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
typedef  int uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_1__ tap; TYPE_2__ event; } ;
typedef  TYPE_3__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_SPC ; 
#define  SPACE_FN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long layer_state ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch (id) {
  case SPACE_FN:
    if (record->event.pressed) {
      // Change the keyboard maps.
      // Whatever even layer's are on, turn on the odd one's too.
      for (uint8_t i = 0; i < 9; i += 2) {
        if (layer_state & (1UL << i))
          FUNC3(i + 1);
      }
      FUNC3(1);
    } else {
      // turn off all the even layers.
      for (uint8_t i = 0; i < 9; i += 2)
        FUNC2(i + 1);

      if (record->tap.count != 0) {
        // Space was tapped rather than used like a modifier.
        // So send a space up and down event.
        FUNC0(KC_SPC);
        FUNC4();
        FUNC1(KC_SPC);
        FUNC4();
      }
    }
    break;
  }
}