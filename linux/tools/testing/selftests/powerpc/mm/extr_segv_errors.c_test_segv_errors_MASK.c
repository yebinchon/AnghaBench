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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 scalar_t__ SEGV_ACCERR ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int faulted ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  segv_handler ; 
 scalar_t__ si_code ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	struct sigaction act = {
		.sa_sigaction = segv_handler,
		.sa_flags = SA_SIGINFO,
	};
	char c, *p = NULL;

	p = FUNC3(NULL, FUNC1(), 0, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
	FUNC0(p == MAP_FAILED);

	FUNC0(FUNC4(SIGSEGV, &act, NULL) != 0);

	faulted = false;
	si_code = 0;

	/*
	 * We just need a compiler barrier, but mb() works and has the nice
	 * property of being easy to spot in the disassembly.
	 */
	FUNC2();
	c = *p;
	FUNC2();

	FUNC0(!faulted);
	FUNC0(si_code != SEGV_ACCERR);

	faulted = false;
	si_code = 0;

	FUNC2();
	*p = c;
	FUNC2();

	FUNC0(!faulted);
	FUNC0(si_code != SEGV_ACCERR);

	return 0;
}