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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ child_pid ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	pid_t pid;
	int ret;
	bool dawr;

	pid = FUNC2();
	if (!pid) {
		FUNC6();
		return 0;
	}

	FUNC7(NULL);

	child_pid = pid;

	FUNC3();
	FUNC0(!FUNC4());
	dawr = FUNC1();

	ret = FUNC5(dawr);

	FUNC7(NULL);

	return ret;
}