#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ QWERTY ; 
 scalar_t__ REP_DELAY ; 
 scalar_t__ REP_INIT_DELAY ; 
 scalar_t__ cMode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  inChord ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int repEngaged ; 
 int /*<<< orphan*/  repTimer ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void) {
	// We abuse this for early sending of key
	// Key repeat only on QWER/SYMB layers
	if (cMode != QWERTY || !inChord) return;

	// Check timers
#ifndef NO_REPEAT
	if (repEngaged && FUNC3(repTimer) > REP_DELAY) {
		// Process Key for report
		FUNC1(false);

		// Send report to host
		FUNC2();
		FUNC0();
		repTimer = FUNC4();
	}

	if (!repEngaged && FUNC3(repTimer) > REP_INIT_DELAY) {
		repEngaged = true;
	}
#endif
}