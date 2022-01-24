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
 int /*<<< orphan*/  ARCH_SET_GS ; 
 int /*<<< orphan*/  FUTEX_WAIT ; 
 int /*<<< orphan*/  FUTEX_WAKE ; 
 int /*<<< orphan*/  GS ; 
 int /*<<< orphan*/  SYS_arch_prctl ; 
 int /*<<< orphan*/  SYS_futex ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ftx ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long base;

	FUNC1("[RUN]\tARCH_SET_GS(0), clear gs, then manipulate GSBASE in a different thread\n");
	if (FUNC3(SYS_arch_prctl, &ARCH_SET_GS, 0) != 0)
		FUNC0(1, "ARCH_SET_GS");
	asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0));

	ftx = 2;
	FUNC3(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);
	while (ftx != 0)
		FUNC3(SYS_futex, &ftx, FUTEX_WAIT, 1, NULL, NULL, 0);

	base = FUNC2(GS);
	if (base == 0) {
		FUNC1("[OK]\tGSBASE remained 0\n");
	} else {
		nerrs++;
		FUNC1("[FAIL]\tGSBASE changed to 0x%lx\n", base);
	}
}