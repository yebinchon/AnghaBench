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
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  segv_err ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ vsyscall_map_r ; 

__attribute__((used)) static int FUNC2(void)
{
#ifdef __x86_64__
	FUNC0("[RUN]\tChecking read access to the vsyscall page\n");
	bool can_read;
	if (FUNC1(jmpbuf, 1) == 0) {
		*(volatile int *)0xffffffffff600000;
		can_read = true;
	} else {
		can_read = false;
	}

	if (can_read && !vsyscall_map_r) {
		FUNC0("[FAIL]\tWe have read access, but we shouldn't\n");
		return 1;
	} else if (!can_read && vsyscall_map_r) {
		FUNC0("[FAIL]\tWe don't have read access, but we should\n");
		return 1;
	} else if (can_read) {
		FUNC0("[OK]\tWe have read access\n");
	} else {
		FUNC0("[OK]\tWe do not have read access: #PF(0x%lx)\n",
		       segv_err);
	}
#endif

	return 0;
}