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
 int /*<<< orphan*/  WNOHANG ; 
 scalar_t__ FUNC0 (char*) ; 
 char** clocksource_list ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC9(int argv, char **argc)
{
	char orig_clk[512];
	int count, i, status;
	pid_t pid;

	FUNC3(orig_clk, 512);

	count = FUNC2(clocksource_list);

	if (FUNC0(clocksource_list[0])) {
		FUNC6("Error: You probably need to run this as root\n");
		return -1;
	}

	/* Check everything is sane before we start switching asyncrhonously */
	for (i = 0; i < count; i++) {
		FUNC6("Validating clocksource %s\n", clocksource_list[i]);
		if (FUNC0(clocksource_list[i])) {
			status = -1;
			goto out;
		}
		if (FUNC7(5)) {
			status = -1;
			goto out;
		}
	}


	FUNC6("Running Asynchronous Switching Tests...\n");
	pid = FUNC1();
	if (!pid)
		return FUNC7(60);

	while (pid != FUNC8(pid, &status, WNOHANG))
		for (i = 0; i < count; i++)
			if (FUNC0(clocksource_list[i])) {
				status = -1;
				goto out;
			}
out:
	FUNC0(orig_clk);

	if (status)
		return FUNC4();
	return FUNC5();
}