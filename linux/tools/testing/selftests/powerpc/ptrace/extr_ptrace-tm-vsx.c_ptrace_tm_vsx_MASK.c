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
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 () ; 
 int* fp_load ; 
 int* fp_load_ckpt ; 
 int* fp_load_ckpt_new ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 unsigned long* pptr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int) ; 
 int FUNC15 (int*) ; 

int FUNC16(void)
{
	pid_t pid;
	int ret, status, i;

	FUNC0(!FUNC4());
	shm_id = FUNC12(IPC_PRIVATE, sizeof(int) * 2, 0777|IPC_CREAT);

	for (i = 0; i < 128; i++) {
		fp_load[i] = 1 + FUNC8();
		fp_load_ckpt[i] = 1 + 2 * FUNC8();
		fp_load_ckpt_new[i] = 1 + 3 * FUNC8();
	}

	pid = FUNC3();
	if (pid < 0) {
		FUNC6("fork() failed");
		return TEST_FAIL;
	}

	if (pid == 0)
		FUNC13();

	if (pid) {
		pptr = (unsigned long *)FUNC9(shm_id, NULL, 0);
		while (!pptr[1])
			asm volatile("" : : : "memory");

		ret = FUNC14(pid);
		if (ret) {
			FUNC5(pid, SIGKILL);
			FUNC11((void *)pptr);
			FUNC10(shm_id, IPC_RMID, NULL);
			return TEST_FAIL;
		}

		FUNC11((void *)pptr);
		ret = FUNC15(&status);
		FUNC10(shm_id, IPC_RMID, NULL);
		if (ret != pid) {
			FUNC7("Child's exit status not captured\n");
			return TEST_FAIL;
		}

		return (FUNC2(status) && FUNC1(status)) ? TEST_FAIL :
			TEST_PASS;
	}
	return TEST_PASS;
}