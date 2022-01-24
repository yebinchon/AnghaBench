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
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
	int nerrs = 0;

	FUNC0();
	nerrs += FUNC1();

	nerrs += FUNC5();
	nerrs += FUNC7();
	nerrs += FUNC4(0);
	nerrs += FUNC4(1);

	FUNC2(SIGSEGV, sigsegv, 0);
	nerrs += FUNC8();
	nerrs += FUNC9();

	nerrs += FUNC6();

#ifdef __x86_64__
	nerrs += FUNC3();
#endif

	return nerrs ? 1 : 0;
}