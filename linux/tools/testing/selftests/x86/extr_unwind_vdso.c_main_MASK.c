#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* dli_fname; int /*<<< orphan*/  dli_fbase; } ;
typedef  TYPE_1__ Dl_info ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYSINFO ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SYS_getpid ; 
 int X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  got_sysinfo ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigtrap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ sysinfo ; 

int FUNC7()
{
	sysinfo = FUNC2(AT_SYSINFO);
	FUNC3("\tAT_SYSINFO is 0x%lx\n", sysinfo);

	Dl_info info;
	if (!FUNC0((void *)sysinfo, &info)) {
		FUNC3("[WARN]\tdladdr failed on AT_SYSINFO\n");
	} else {
		FUNC3("[OK]\tAT_SYSINFO maps to %s, loaded at 0x%p\n",
		       info.dli_fname, info.dli_fbase);
	}

	FUNC5(SIGTRAP, sigtrap, 0);

	FUNC6(SYS_getpid);  /* Force symbol binding without TF set. */
	FUNC3("[RUN]\tSet TF and check a fast syscall\n");
	FUNC4(FUNC1() | X86_EFLAGS_TF);
	FUNC6(SYS_getpid, 1, 2, 3, 4, 5, 6);
	if (!got_sysinfo) {
		FUNC4(FUNC1() & ~X86_EFLAGS_TF);

		/*
		 * The most likely cause of this is that you're on Debian or
		 * a Debian-based distro, you're missing libc6-i686, and you're
		 * affected by libc/19006 (https://sourceware.org/PR19006).
		 */
		FUNC3("[WARN]\tsyscall(2) didn't enter AT_SYSINFO\n");
	}

	if (FUNC1() & X86_EFLAGS_TF) {
		FUNC3("[FAIL]\tTF is still set\n");
		nerrs++;
	}

	if (nerrs) {
		FUNC3("[FAIL]\tThere were errors\n");
		return 1;
	} else {
		FUNC3("[OK]\tAll is well\n");
		return 0;
	}
}