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
 int /*<<< orphan*/  FCTN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMP ; 
 int /*<<< orphan*/  SYMB ; 
 int /*<<< orphan*/  SYSH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7 (void) {

	if (FUNC0(SYMB) || FUNC0(SYSH)) {
		FUNC2();
	} else {
		FUNC1();
	}

	if (FUNC0(NUMP)) {
		FUNC4();
	} else {
		FUNC3();
	}

	if (FUNC0(FCTN)) {
		FUNC6();
	} else {
		FUNC5();
	}

}