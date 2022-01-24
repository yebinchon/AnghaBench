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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  EXE ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 

int
FUNC8(const char *argv0, const char *target,
				const char *versionstr, char *retpath)
{
	char		cmd[MAXPGPATH];
	char		line[MAXPGPATH];

	if (FUNC1(argv0, retpath) < 0)
		return -1;

	/* Trim off program name and keep just directory */
	*FUNC2(retpath) = '\0';
	FUNC0(retpath);

	/* Now append the other program's name */
	FUNC4(retpath + FUNC6(retpath), MAXPGPATH - FUNC6(retpath),
			 "/%s%s", target, EXE);

	if (FUNC7(retpath) != 0)
		return -1;

	FUNC4(cmd, sizeof(cmd), "\"%s\" -V", retpath);

	if (!FUNC3(cmd, line, sizeof(line)))
		return -1;

	if (FUNC5(line, versionstr) != 0)
		return -2;

	return 0;
}