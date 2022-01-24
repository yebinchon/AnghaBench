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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 char* EXE_EXT ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  R_OK ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(const char *dir, const char *cmdName)
{
	char		path[MAXPGPATH];
	struct stat buf;

	FUNC4(path, sizeof(path), "%s/%s", dir, cmdName);

#ifdef WIN32
	/* Windows requires a .exe suffix for stat() */
	if (strlen(path) <= strlen(EXE_EXT) ||
		pg_strcasecmp(path + strlen(path) - strlen(EXE_EXT), EXE_EXT) != 0)
		strlcat(path, EXE_EXT, sizeof(path));
#endif

	/*
	 * Ensure that the file exists and is a regular file.
	 */
	if (FUNC5(path, &buf) < 0)
		FUNC2("check for \"%s\" failed: %s\n",
				 path, FUNC6(errno));
	else if (!FUNC0(buf.st_mode))
		FUNC2("check for \"%s\" failed: not a regular file\n",
				 path);

	/*
	 * Ensure that the file is both executable and readable (required for
	 * dynamic loading).
	 */
#ifndef WIN32
	if (FUNC1(path, R_OK) != 0)
#else
	if ((buf.st_mode & S_IRUSR) == 0)
#endif
		FUNC2("check for \"%s\" failed: cannot read file (permission denied)\n",
				 path);

#ifndef WIN32
	if (FUNC1(path, X_OK) != 0)
#else
	if ((buf.st_mode & S_IXUSR) == 0)
#endif
		FUNC2("check for \"%s\" failed: cannot execute (permission denied)\n",
				 path);
}