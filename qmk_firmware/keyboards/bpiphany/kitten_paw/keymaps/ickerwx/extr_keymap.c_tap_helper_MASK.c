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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {scalar_t__ count; scalar_t__ interrupted; } ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_2__ tap; TYPE_1__ event; } ;
typedef  TYPE_3__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(keyrecord_t *record, uint16_t orig_mod, uint16_t macro_mod, uint16_t macro_kc ) {
  if (record->event.pressed) {
      if (record->tap.count > 0 && !record->tap.interrupted) {
          if (record->tap.interrupted) {
              FUNC4(FUNC0(orig_mod));
          }
      } else {
          FUNC4(FUNC0(orig_mod));
      }
  } else {
      if (record->tap.count > 0 && !(record->tap.interrupted)) {
          FUNC1(FUNC0(macro_mod));
          FUNC5();
          FUNC3(macro_kc);
          FUNC6(macro_kc);
          FUNC2(FUNC0(macro_mod));
          FUNC5();
          record->tap.count = 0;  // ad hoc: cancel tap
      } else {
          FUNC7(FUNC0(orig_mod));
      }
  }
}