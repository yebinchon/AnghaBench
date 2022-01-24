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
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LCTL ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  key_timer ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

const macro_t *FUNC6(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 0: {
            if (record->event.pressed) {
                key_timer = FUNC5(); // if the key is being pressed, we start the timer.
            }
            else { // this means the key was just released, so we can figure out how long it was pressed for (tap or "held down").
                if (FUNC4(key_timer) > 150) { // 150 being 150ms, the threshhold we pick for counting something as a tap.
                    return FUNC1( FUNC0(LCTL), FUNC2(C), FUNC3(LCTL), END  );
                }
                else {
                    return FUNC1( FUNC0(LCTL), FUNC2(V), FUNC3(LCTL), END  );
                }
            }
            break;
        }
      }
    return MACRO_NONE;
}