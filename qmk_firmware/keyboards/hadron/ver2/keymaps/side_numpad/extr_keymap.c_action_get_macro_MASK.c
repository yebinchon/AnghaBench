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
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  E ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  H ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  KC_DEMOMACRO 128 
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  O ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  SPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    if (!FUNC4()) {
      FUNC3();
    }

    switch (id) {
      case KC_DEMOMACRO:
        if (record->event.pressed){
          return FUNC1 (FUNC0(1), FUNC2(H),FUNC2(E),FUNC2(L), FUNC2(L), FUNC2(O), FUNC2(SPACE), FUNC2(W), FUNC2(O), FUNC2(R), FUNC2(L), FUNC2(D),  END);
        }
    }

    return MACRO_NONE;
}