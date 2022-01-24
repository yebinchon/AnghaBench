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
struct shared_info {int /*<<< orphan*/  child_sync; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int TEST_FAIL ; 
 int FUNC0 (struct shared_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct shared_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char**,int*) ; 
 struct shared_info* FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct shared_info*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(void)
{
	char *core_pattern;
	bool changed_core_pattern;
	struct shared_info *info;
	int shm_id;
	int ret;
	pid_t pid;

	ret = FUNC7(&core_pattern, &changed_core_pattern);
	if (ret)
		return ret;

	shm_id = FUNC11(IPC_PRIVATE, sizeof(*info), 0777 | IPC_CREAT);
	info = FUNC8(shm_id, NULL, 0);

	ret = FUNC4(&info->child_sync);
	if (ret)
		return ret;

	pid = FUNC2();
	if (pid < 0) {
		FUNC6("fork() failed");
		ret = TEST_FAIL;
	} else if (pid == 0)
		ret = FUNC0(info);
	else
		ret = FUNC5(info, pid);

	FUNC10(info);

	if (pid) {
		FUNC1(&info->child_sync);
		FUNC9(shm_id, IPC_RMID, NULL);

		if (changed_core_pattern)
			FUNC12(core_pattern);
	}

	FUNC3(core_pattern);

	return ret;
}