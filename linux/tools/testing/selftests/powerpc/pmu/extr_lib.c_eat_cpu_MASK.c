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
union pipe {int /*<<< orphan*/  fds; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGKILL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (union pipe,union pipe) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (union pipe,union pipe) ; 

pid_t FUNC11(int (test_function)(void))
{
	union pipe read_pipe, write_pipe;
	int cpu, rc;
	pid_t pid;

	cpu = FUNC7();
	FUNC0(cpu < 0);
	FUNC0(FUNC1(cpu));

	if (FUNC8(read_pipe.fds) == -1)
		return -1;

	if (FUNC8(write_pipe.fds) == -1)
		return -1;

	pid = FUNC4();
	if (pid == 0)
		FUNC3(FUNC2(write_pipe, read_pipe));

	if (FUNC10(read_pipe, write_pipe)) {
		rc = -1;
		goto out;
	}

	FUNC9("main test running as pid %d\n", FUNC5());

	rc = test_function();
out:
	FUNC6(pid, SIGKILL);

	return rc;
}