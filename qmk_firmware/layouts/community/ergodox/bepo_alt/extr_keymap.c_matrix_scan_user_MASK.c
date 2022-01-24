#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNAV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_1__* keyboard_report ; 

void FUNC5(void) {

  /* red led for shift */
  if (keyboard_report->mods & FUNC1(KC_LSFT) ||
    ((FUNC2() & FUNC1(KC_LSFT)) && !FUNC3())) {
    FUNC4(1, true);
  } else {
    FUNC4(1, false);
  }

  /* green led for alt */
  if (keyboard_report->mods & FUNC1(KC_LALT) ||
    ((FUNC2() & FUNC1(KC_LALT)) && !FUNC3())) {
    FUNC4(2, true);
  } else {
    FUNC4(2, false);
  }

  /* blue led for function mode */
  if (FUNC0(FNAV)) {
    FUNC4(3, true);
  } else {
    FUNC4(3, false);
  }
}