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
struct shared_info {unsigned long amr; unsigned long iamr; unsigned long uamor; int /*<<< orphan*/  child_sync; } ;
typedef  int pid_t ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  NT_PPC_PKEY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PROT_READ ; 
 int TEST_FAIL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct shared_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int FUNC15 (char*,int,char*,int) ; 
 int FUNC16 (char*,struct shared_info*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (int*) ; 

__attribute__((used)) static int FUNC19(struct shared_info *info, pid_t pid)
{
	char *filenames, *filename[3];
	int fd, i, ret, status;
	unsigned long regs[3];
	off_t core_size;
	void *core;

	/*
	 * Get the initial values for AMR, IAMR and UAMOR and communicate them
	 * to the child.
	 */
	ret = FUNC14(pid, NT_PPC_PKEY, regs, 3);
	FUNC1(ret, &info->child_sync);
	FUNC0(ret, &info->child_sync);

	info->amr = regs[0];
	info->iamr = regs[1];
	info->uamor = regs[2];

	/* Wake up child so that it can set itself up. */
	ret = FUNC13(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC18(&status);
	if (ret != pid) {
		FUNC12("Child's exit status not captured\n");
		return TEST_FAIL;
	} else if (!FUNC3(status) || !FUNC2(status)) {
		FUNC12("Child didn't dump core\n");
		return TEST_FAIL;
	}

	/* Construct array of core file names to try. */

	filename[0] = filenames = FUNC7(PATH_MAX);
	if (!filenames) {
		FUNC11("Error allocating memory");
		return TEST_FAIL;
	}

	ret = FUNC15(filename[0], PATH_MAX, "core-pkey.%d", pid);
	if (ret < 0 || ret >= PATH_MAX) {
		ret = TEST_FAIL;
		goto out;
	}

	filename[1] = filename[0] + ret + 1;
	ret = FUNC15(filename[1], PATH_MAX - ret - 1, "core.%d", pid);
	if (ret < 0 || ret >= PATH_MAX - ret - 1) {
		ret = TEST_FAIL;
		goto out;
	}
	filename[2] = "core";

	for (i = 0; i < 3; i++) {
		core_size = FUNC16(filename[i], info, pid);
		if (core_size != TEST_FAIL)
			break;
	}

	if (i == 3) {
		FUNC12("Couldn't find core file\n");
		ret = TEST_FAIL;
		goto out;
	}

	fd = FUNC10(filename[i], O_RDONLY);
	if (fd == -1) {
		FUNC11("Error opening core file");
		ret = TEST_FAIL;
		goto out;
	}

	core = FUNC8(NULL, core_size, PROT_READ, MAP_PRIVATE, fd, 0);
	if (core == (void *) -1) {
		FUNC11("Error mmaping core file");
		ret = TEST_FAIL;
		goto out;
	}

	ret = FUNC4(info, core, core_size);

	FUNC9(core, core_size);
	FUNC5(fd);
	FUNC17(filename[i]);

 out:
	FUNC6(filenames);

	return ret;
}