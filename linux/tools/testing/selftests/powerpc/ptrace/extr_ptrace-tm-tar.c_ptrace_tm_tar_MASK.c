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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 unsigned long* pptr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int) ; 
 int FUNC13 (int*) ; 

int FUNC14(void)
{
	pid_t pid;
	int ret, status;

	FUNC0(!FUNC4());
	shm_id = FUNC10(IPC_PRIVATE, sizeof(int) * 2, 0777|IPC_CREAT);
	pid = FUNC3();
	if (pid == 0)
		FUNC11();

	pptr = (unsigned long *)FUNC7(shm_id, NULL, 0);
	pptr[0] = 0;

	if (pid) {
		while (!pptr[1])
			asm volatile("" : : : "memory");
		ret = FUNC12(pid);
		if (ret) {
			FUNC5(pid, SIGTERM);
			FUNC9(&pptr);
			FUNC8(shm_id, IPC_RMID, NULL);
			return TEST_FAIL;
		}
		FUNC9(&pptr);

		ret = FUNC13(&status);
		FUNC8(shm_id, IPC_RMID, NULL);
		if (ret != pid) {
			FUNC6("Child's exit status not captured\n");
			return TEST_FAIL;
		}

		return (FUNC2(status) && FUNC1(status)) ? TEST_FAIL :
			TEST_PASS;
	}
	return TEST_PASS;
}