#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  MC_ARROW 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TAP_MACRO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
  if (keycode != FUNC1(TAP_MACRO)) {
    // That key is processed by the macro_tapdance_fn. Not ignoring it here is
    // mostly a no-op except that it is recorded in the macros (and uses space).
    // We can't just return false when the key is a tap dance, because
    // process_record_user, is called before the tap dance processing (and
    // returning false would eat the tap dance).
    if (!FUNC2(keycode, record)) {
      return false;
    }

    if(record->event.pressed) {
      switch(keycode) {
        case MC_ARROW:
          FUNC0("=>");
          return false;
          break;
      }
    }
  }

  return true; // Let QMK send the enter press/release events
}