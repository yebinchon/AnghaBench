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
typedef  int /*<<< orphan*/  subDirName ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char*,char const*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *pg_data, const char *subdir)
{
	struct stat statBuf;
	char		subDirName[MAXPGPATH];

	FUNC2(subDirName, sizeof(subDirName), "%s%s%s", pg_data,
	/* Win32 can't stat() a directory with a trailing slash. */
			 *subdir ? "/" : "",
			 subdir);

	if (FUNC3(subDirName, &statBuf) != 0)
		FUNC1(PG_FATAL, "check for \"%s\" failed: %s\n",
					  subDirName, FUNC4(errno));
	else if (!FUNC0(statBuf.st_mode))
		FUNC1(PG_FATAL, "\"%s\" is not a directory\n",
					  subDirName);
}