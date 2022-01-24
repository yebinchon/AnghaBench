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
struct stat {scalar_t__ st_ino; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int CLONE_NEWUSER ; 
 int CLONE_NEWUTS ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  NS_GET_USERNS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PR_SET_PDEATHSIG ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*) ; 
 int FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,scalar_t__) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(int argc, char *argvp[])
{
	int pfd[2], ns, uns, init_uns;
	struct stat st1, st2;
	char path[128];
	pid_t pid;
	char c;

	if (FUNC6(pfd))
		return 1;

	pid = FUNC1();
	if (pid < 0)
		return FUNC7("fork");
	if (pid == 0) {
		FUNC8(PR_SET_PDEATHSIG, SIGKILL);
		if (FUNC13(CLONE_NEWUTS | CLONE_NEWUSER))
			return FUNC7("unshare");
		FUNC0(pfd[0]);
		FUNC0(pfd[1]);
		while (1)
			FUNC10(1);
		return 0;
	}
	FUNC0(pfd[1]);
	if (FUNC9(pfd[0], &c, 1) != 0)
		return FUNC7("Unable to read from pipe");
	FUNC0(pfd[0]);

	FUNC11(path, sizeof(path), "/proc/%d/ns/uts", pid);
	ns = FUNC5(path, O_RDONLY);
	if (ns < 0)
		return FUNC7("Unable to open %s", path);

	uns = FUNC3(ns, NS_GET_USERNS);
	if (uns < 0)
		return FUNC7("Unable to get an owning user namespace");

	if (FUNC2(uns, &st1))
		return FUNC7("fstat");

	FUNC11(path, sizeof(path), "/proc/%d/ns/user", pid);
	if (FUNC12(path, &st2))
		return FUNC7("stat");

	if (st1.st_ino != st2.st_ino)
		return FUNC7("NS_GET_USERNS returned a wrong namespace");

	init_uns = FUNC3(uns, NS_GET_USERNS);
	if (uns < 0)
		return FUNC7("Unable to get an owning user namespace");

	if (FUNC3(init_uns, NS_GET_USERNS) >= 0 || errno != EPERM)
		return FUNC7("Don't get EPERM");

	if (FUNC13(CLONE_NEWUSER))
		return FUNC7("unshare");

	if (FUNC3(ns, NS_GET_USERNS) >= 0 || errno != EPERM)
		return FUNC7("Don't get EPERM");
	if (FUNC3(init_uns, NS_GET_USERNS) >= 0 || errno != EPERM)
		return FUNC7("Don't get EPERM");

	FUNC4(pid, SIGKILL);
	FUNC14(NULL);
	return 0;
}