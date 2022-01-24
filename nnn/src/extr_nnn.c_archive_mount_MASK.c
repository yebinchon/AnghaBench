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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  F_NORMAL ; 
 size_t OPERATION_FAILED ; 
 int TRUE ; 
 size_t UTIL_MISSING ; 
 int /*<<< orphan*/  cfgdir ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * messages ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char*) ; 

__attribute__((used)) static bool FUNC10(char *name, char *path, char *newpath, int *presel)
{
	char *dir, *cmd = "archivemount";
	size_t len;

	if (!FUNC3(cmd)) {
		FUNC5(messages[UTIL_MISSING], presel);
		return FALSE;
	}

	dir = FUNC7(name);
	if (!dir)
		return FALSE;

	len = FUNC9(dir);

	while (len > 1)
		if (dir[--len] == '.') {
			dir[len] = '\0';
			break;
		}

	FUNC0(dir);

	/* Create the mount point */
	FUNC4(cfgdir, dir, newpath);
	FUNC2(dir);

	if (!FUNC1(newpath)) {
		FUNC5(FUNC8(errno), presel);
		return FALSE;
	}

	/* Mount archive */
	FUNC0(name);
	FUNC0(newpath);
	if (FUNC6(cmd, name, newpath, path, F_NORMAL)) {
		FUNC5(messages[OPERATION_FAILED], presel);
		return FALSE;
	}

	return TRUE;
}