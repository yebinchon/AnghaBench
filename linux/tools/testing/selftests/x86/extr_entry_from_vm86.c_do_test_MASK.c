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
struct TYPE_2__ {unsigned long eip; } ;
struct vm86plus_struct {TYPE_1__ regs; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 scalar_t__ EPERM ; 
 unsigned int FUNC0 (long) ; 
 int /*<<< orphan*/  VM86_ENTER ; 
 unsigned int VM86_INTx ; 
 unsigned int VM86_SIGNAL ; 
 unsigned int VM86_STI ; 
 unsigned int VM86_TRAP ; 
 unsigned int FUNC1 (long) ; 
 unsigned int VM86_UNKNOWN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 long FUNC5 (int /*<<< orphan*/ ,struct vm86plus_struct*) ; 

__attribute__((used)) static bool FUNC6(struct vm86plus_struct *v86, unsigned long eip,
		    unsigned int rettype, unsigned int retarg,
		    const char *text)
{
	long ret;

	FUNC2("[RUN]\t%s from vm86 mode\n", text);
	v86->regs.eip = eip;
	ret = FUNC5(VM86_ENTER, v86);

	if (ret == -1 && (errno == ENOSYS || errno == EPERM)) {
		FUNC2("[SKIP]\tvm86 %s\n",
		       errno == ENOSYS ? "not supported" : "not allowed");
		return false;
	}

	if (FUNC1(ret) == VM86_INTx) {
		char trapname[32];
		int trapno = FUNC0(ret);
		if (trapno == 13)
			FUNC4(trapname, "GP");
		else if (trapno == 5)
			FUNC4(trapname, "BR");
		else if (trapno == 14)
			FUNC4(trapname, "PF");
		else
			FUNC3(trapname, "%d", trapno);

		FUNC2("[INFO]\tExited vm86 mode due to #%s\n", trapname);
	} else if (FUNC1(ret) == VM86_UNKNOWN) {
		FUNC2("[INFO]\tExited vm86 mode due to unhandled GP fault\n");
	} else if (FUNC1(ret) == VM86_TRAP) {
		FUNC2("[INFO]\tExited vm86 mode due to a trap (arg=%ld)\n",
		       FUNC0(ret));
	} else if (FUNC1(ret) == VM86_SIGNAL) {
		FUNC2("[INFO]\tExited vm86 mode due to a signal\n");
	} else if (FUNC1(ret) == VM86_STI) {
		FUNC2("[INFO]\tExited vm86 mode due to STI\n");
	} else {
		FUNC2("[INFO]\tExited vm86 mode due to type %ld, arg %ld\n",
		       FUNC1(ret), FUNC0(ret));
	}

	if (rettype == -1 ||
	    (FUNC1(ret) == rettype && FUNC0(ret) == retarg)) {
		FUNC2("[OK]\tReturned correctly\n");
	} else {
		FUNC2("[FAIL]\tIncorrect return reason (started at eip = 0x%lx, ended at eip = 0x%lx)\n", eip, v86->regs.eip);
		nerrs++;
	}

	return true;
}