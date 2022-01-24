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
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	int len, ret;

	ret = FUNC3(PTRACE_TRACEME, 0, NULL, 0);
	if (ret) {
		FUNC2("Can't be traced?\n");
		return;
	}

	/* Wake up father so that it sets up the first test */
	FUNC1(FUNC0(), SIGUSR1);

	/* Test write watchpoints */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC5(len);

	/* Test read/write watchpoints (on read accesses) */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC4(len);

	/* Test when breakpoint is unset */

	/* Test write watchpoints */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC5(len);

	/* Test read/write watchpoints (on read accesses) */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC4(len);
}