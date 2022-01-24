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
typedef  int /*<<< orphan*/  uchar ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  F_MULTI ; 
 int /*<<< orphan*/  F_NORMAL ; 
 size_t OPERATION_FAILED ; 
 int TRUE ; 
 size_t UTIL_MISSING ; 
 int /*<<< orphan*/  cfgdir ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * messages ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC9(char *newpath, int *presel)
{
	uchar flag = F_NORMAL;
	int r;
	char *tmp, *env, *cmd = "sshfs";

	if (!FUNC2(cmd)) {
		FUNC4(messages[UTIL_MISSING], presel);
		return FALSE;
	}

	tmp = FUNC8(NULL, "host: ");
	if (!tmp[0])
		return FALSE;

	/* Create the mount point */
	FUNC3(cfgdir, tmp, newpath);
	if (!FUNC0(newpath)) {
		FUNC4(FUNC6(errno), presel);
		return FALSE;
	}

	/* Convert "Host" to "Host:" */
	r = FUNC7(tmp);
	tmp[r] = ':';
	tmp[r + 1] = '\0';

	env = FUNC1("NNN_SSHFS_OPTS");
	if (env)
		flag |= F_MULTI;
	else
		env = cmd;

	/* Connect to remote */
	if (FUNC5(env, tmp, newpath, NULL, flag)) {
		FUNC4(messages[OPERATION_FAILED], presel);
		return FALSE;
	}

	return TRUE;
}