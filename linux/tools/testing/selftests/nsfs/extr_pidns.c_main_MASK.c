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
struct cr_clone_arg {int /*<<< orphan*/  stack_ptr; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int CLONE_NEWPID ; 
 int CLONE_NEWUSER ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  NS_GET_PARENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int SIGCHLD ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  child ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(int argc, char *argv[])
{
	char *ns_strs[] = {"pid", "user"};
	char path[] = "/proc/0123456789/ns/pid";
	struct cr_clone_arg ca;
	struct stat st1, st2;
	int ns, pns, i;
	pid_t pid;

	pid = FUNC0(child, ca.stack_ptr, CLONE_NEWUSER | CLONE_NEWPID | SIGCHLD, NULL);
	if (pid < 0)
		return FUNC5("clone");

	for (i = 0; i < 2; i++) {
		FUNC6(path, sizeof(path), "/proc/%d/ns/%s", pid, ns_strs[i]);
		ns = FUNC4(path, O_RDONLY);
		if (ns < 0)
			return FUNC5("Unable to open %s", path);

		pns = FUNC2(ns, NS_GET_PARENT);
		if (pns < 0)
			return FUNC5("Unable to get a parent pidns");

		FUNC6(path, sizeof(path), "/proc/self/ns/%s", ns_strs[i]);
		if (FUNC7(path, &st2))
			return FUNC5("Unable to stat %s", path);
		if (FUNC1(pns, &st1))
			return FUNC5("Unable to stat the parent pidns");
		if (st1.st_ino != st2.st_ino)
			return FUNC5("NS_GET_PARENT returned a wrong namespace");

		if (FUNC2(pns, NS_GET_PARENT) >= 0 || errno != EPERM)
			return FUNC5("Don't get EPERM");
	}

	FUNC3(pid, SIGKILL);
	FUNC8(NULL);
	return 0;
}