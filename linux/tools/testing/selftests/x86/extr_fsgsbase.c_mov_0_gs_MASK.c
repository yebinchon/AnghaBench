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
 int /*<<< orphan*/  ARCH_GET_GS ; 
 int /*<<< orphan*/  ARCH_SET_GS ; 
 int /*<<< orphan*/  GS ; 
 int /*<<< orphan*/  SYS_arch_prctl ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(unsigned long initial_base, bool schedule)
{
	unsigned long base, arch_base;

	FUNC1("[RUN]\tARCH_SET_GS to 0x%lx then mov 0 to %%gs%s\n", initial_base, schedule ? " and schedule " : "");
	if (FUNC3(SYS_arch_prctl, ARCH_SET_GS, initial_base) != 0)
		FUNC0(1, "ARCH_SET_GS");

	if (schedule)
		FUNC4(10);

	asm volatile ("mov %0, %%gs" : : "rm" (0));
	base = FUNC2(GS);
	if (FUNC3(SYS_arch_prctl, ARCH_GET_GS, &arch_base) != 0)
		FUNC0(1, "ARCH_GET_GS");
	if (base == arch_base) {
		FUNC1("[OK]\tGSBASE is 0x%lx\n", base);
	} else {
		nerrs++;
		FUNC1("[FAIL]\tGSBASE changed to 0x%lx but kernel reports 0x%lx\n", base, arch_base);
	}
}