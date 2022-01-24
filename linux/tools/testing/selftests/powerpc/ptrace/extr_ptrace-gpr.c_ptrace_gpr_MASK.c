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
 int /*<<< orphan*/  SIGTERM ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int* pptr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int*) ; 

int FUNC13(void)
{
	pid_t pid;
	int ret, status;

	shm_id = FUNC10(IPC_PRIVATE, sizeof(int) * 2, 0777|IPC_CREAT);
	pid = FUNC2();
	if (pid < 0) {
		FUNC5("fork() failed");
		return TEST_FAIL;
	}
	if (pid == 0)
		FUNC3();

	if (pid) {
		pptr = (int *)FUNC7(shm_id, NULL, 0);
		while (!pptr[1])
			asm volatile("" : : : "memory");

		ret = FUNC11(pid);
		if (ret) {
			FUNC4(pid, SIGTERM);
			FUNC9((void *)pptr);
			FUNC8(shm_id, IPC_RMID, NULL);
			return TEST_FAIL;
		}

		pptr[0] = 1;
		FUNC9((void *)pptr);

		ret = FUNC12(&status);
		FUNC8(shm_id, IPC_RMID, NULL);
		if (ret != pid) {
			FUNC6("Child's exit status not captured\n");
			return TEST_FAIL;
		}

		return (FUNC1(status) && FUNC0(status)) ? TEST_FAIL :
			TEST_PASS;
	}

	return TEST_PASS;
}