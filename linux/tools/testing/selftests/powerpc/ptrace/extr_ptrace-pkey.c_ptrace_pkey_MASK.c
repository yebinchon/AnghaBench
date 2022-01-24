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
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct shared_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct shared_info* FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct shared_info*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct shared_info *info;
	int shm_id;
	int ret;
	pid_t pid;

	shm_id = FUNC9(IPC_PRIVATE, sizeof(*info), 0777 | IPC_CREAT);
	info = FUNC6(shm_id, NULL, 0);

	ret = FUNC3(&info->child_sync);
	if (ret)
		return ret;

	pid = FUNC2();
	if (pid < 0) {
		FUNC5("fork() failed");
		ret = TEST_FAIL;
	} else if (pid == 0)
		ret = FUNC0(info);
	else
		ret = FUNC4(info, pid);

	FUNC8(info);

	if (pid) {
		FUNC1(&info->child_sync);
		FUNC7(shm_id, IPC_RMID, NULL);
	}

	return ret;
}