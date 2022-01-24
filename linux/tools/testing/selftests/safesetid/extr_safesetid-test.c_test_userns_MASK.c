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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  map_file_name ;

/* Variables and functions */
 int CLONE_NEWUSER ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  SYS_clone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,size_t,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(bool expect_success)
{
	uid_t uid;
	char map_file_name[32];
	size_t sz = sizeof(map_file_name);
	pid_t cpid;
	bool success;

	uid = FUNC1();

	int clone_flags = CLONE_NEWUSER;
	cpid = FUNC5(SYS_clone, clone_flags, NULL);
	if (cpid == -1) {
	    FUNC2("clone failed");
	    return false;
	}

	if (cpid == 0) {	/* Code executed by child */
		// Give parent 1 second to write map file
		FUNC3(1);
		FUNC0(EXIT_SUCCESS);
	} else {		/* Code executed by parent */
		if(FUNC4(map_file_name, sz, "/proc/%d/uid_map", cpid) < 0) {
			FUNC2("preparing file name string failed");
			return false;
		}
		success = FUNC6(map_file_name, "0 0 1", uid);
		return success == expect_success;
	}

	FUNC2("should not reach here");
	return false;
}