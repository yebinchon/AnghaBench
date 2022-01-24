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
 int /*<<< orphan*/  SYS_getpid ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long extraflags)
{
	unsigned long flags;

	FUNC2(FUNC0() | extraflags);
	FUNC3(SYS_getpid);
	flags = FUNC0();
	if ((flags & extraflags) == extraflags) {
		FUNC1("[OK]\tThe syscall worked and flags are still set\n");
	} else {
		FUNC1("[FAIL]\tThe syscall worked but flags were cleared (flags = 0x%lx but expected 0x%lx set)\n",
		       flags, extraflags);
		nerrs++;
	}
}