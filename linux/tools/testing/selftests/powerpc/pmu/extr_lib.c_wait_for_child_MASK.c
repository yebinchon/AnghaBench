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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int FUNC4(pid_t child_pid)
{
	int rc;

	if (FUNC3(child_pid, &rc, 0) == -1) {
		FUNC2("waitpid");
		return 1;
	}

	if (FUNC1(rc))
		rc = FUNC0(rc);
	else
		rc = 1; /* Signal or other */

	return rc;
}