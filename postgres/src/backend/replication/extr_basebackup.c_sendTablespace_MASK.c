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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pathbuf ;
typedef  int /*<<< orphan*/  int64 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  NIL ; 
 char* TABLESPACE_VERSION_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int64
FUNC8(char *path, bool sizeonly)
{
	int64		size;
	char		pathbuf[MAXPGPATH];
	struct stat statbuf;

	/*
	 * 'path' points to the tablespace location, but we only want to include
	 * the version directory in it that belongs to us.
	 */
	FUNC6(pathbuf, sizeof(pathbuf), "%s/%s", path,
			 TABLESPACE_VERSION_DIRECTORY);

	/*
	 * Store a directory entry in the tar file so we get the permissions
	 * right.
	 */
	if (FUNC4(pathbuf, &statbuf) != 0)
	{
		if (errno != ENOENT)
			FUNC1(ERROR,
					(FUNC2(),
					 FUNC3("could not stat file or directory \"%s\": %m",
							pathbuf)));

		/* If the tablespace went away while scanning, it's no error. */
		return 0;
	}

	size = FUNC0(TABLESPACE_VERSION_DIRECTORY, NULL, &statbuf,
						   sizeonly);

	/* Send all the files in the tablespace version directory */
	size += FUNC5(pathbuf, FUNC7(path), sizeonly, NIL, true);

	return size;
}