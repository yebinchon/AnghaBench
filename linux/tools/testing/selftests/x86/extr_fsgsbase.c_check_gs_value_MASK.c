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

__attribute__((used)) static void FUNC4(unsigned long value)
{
	unsigned long base;
	unsigned short sel;

	FUNC1("[RUN]\tARCH_SET_GS to 0x%lx\n", value);
	if (FUNC3(SYS_arch_prctl, ARCH_SET_GS, value) != 0)
		FUNC0(1, "ARCH_SET_GS");

	asm volatile ("mov %%gs, %0" : "=rm" (sel));
	base = FUNC2(GS);
	if (base == value) {
		FUNC1("[OK]\tGSBASE was set as expected (selector 0x%hx)\n",
		       sel);
	} else {
		nerrs++;
		FUNC1("[FAIL]\tGSBASE was not as expected: got 0x%lx (selector 0x%hx)\n",
		       base, sel);
	}

	if (FUNC3(SYS_arch_prctl, ARCH_GET_GS, &base) != 0)
		FUNC0(1, "ARCH_GET_GS");
	if (base == value) {
		FUNC1("[OK]\tARCH_GET_GS worked as expected (selector 0x%hx)\n",
		       sel);
	} else {
		nerrs++;
		FUNC1("[FAIL]\tARCH_GET_GS was not as expected: got 0x%lx (selector 0x%hx)\n",
		       base, sel);
	}
}