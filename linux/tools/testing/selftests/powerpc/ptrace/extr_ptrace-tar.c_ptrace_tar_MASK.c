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
typedef  int pid_t ;

/* Variables and functions */
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int* pptr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int*) ; 

int FUNC13(void)
{
	pid_t pid;
	int ret, status;

	shm_id = FUNC8(IPC_PRIVATE, sizeof(int) * 3, 0777|IPC_CREAT);
	pid = FUNC2();
	if (pid < 0) {
		FUNC3("fork() failed");
		return TEST_FAIL;
	}

	if (pid == 0)
		FUNC9();

	if (pid) {
		pptr = (int *)FUNC5(shm_id, NULL, 0);
		pptr[0] = 0;
		pptr[1] = 0;

		while (!pptr[2])
			asm volatile("" : : : "memory");
		ret = FUNC10(pid);
		if (ret)
			return ret;

		ret = FUNC11(pid);
		if (ret)
			return ret;

		/* Unblock the child now */
		pptr[0] = 1;

		/* Wait on child */
		while (!pptr[1])
			asm volatile("" : : : "memory");

		FUNC7((int *)pptr);

		ret = FUNC12(&status);
		FUNC6(shm_id, IPC_RMID, NULL);
		if (ret != pid) {
			FUNC4("Child's exit status not captured\n");
			return TEST_PASS;
		}

		return (FUNC1(status) && FUNC0(status)) ? TEST_FAIL :
			TEST_PASS;
	}
	return TEST_PASS;
}