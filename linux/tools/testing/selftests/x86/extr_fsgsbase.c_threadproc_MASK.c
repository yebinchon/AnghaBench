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
 int /*<<< orphan*/  FUTEX_WAIT ; 
 int /*<<< orphan*/  FUTEX_WAKE ; 
 int /*<<< orphan*/  SYS_futex ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ftx ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *ctx)
{
	while (1) {
		while (ftx == 0)
			FUNC3(SYS_futex, &ftx, FUTEX_WAIT, 0, NULL, NULL, 0);
		if (ftx == 3)
			return NULL;

		if (ftx == 1) {
			FUNC0();
		} else if (ftx == 2) {
			/*
			 * On AMD chips, this causes GSBASE != 0, GS == 0, and
			 * thread.gsbase == 0.
			 */

			FUNC2();
			asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0));
		} else {
			FUNC1(1, "helper thread got bad command");
		}

		ftx = 0;
		FUNC3(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);
	}
}