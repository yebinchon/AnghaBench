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
 int MAXPGPATH ; 
 char* XLOGDIR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char*) ; 

__attribute__((used)) static char *
FUNC5(char *directory, char *fname)
{
	char		fpath[MAXPGPATH];

	if (directory != NULL)
	{
		if (FUNC3(directory, fname))
			return FUNC2(directory);

		/* directory / XLOGDIR */
		FUNC4(fpath, MAXPGPATH, "%s/%s", directory, XLOGDIR);
		if (FUNC3(fpath, fname))
			return FUNC2(fpath);
	}
	else
	{
		const char *datadir;

		/* current directory */
		if (FUNC3(".", fname))
			return FUNC2(".");
		/* XLOGDIR */
		if (FUNC3(XLOGDIR, fname))
			return FUNC2(XLOGDIR);

		datadir = FUNC1("PGDATA");
		/* $PGDATA / XLOGDIR */
		if (datadir != NULL)
		{
			FUNC4(fpath, MAXPGPATH, "%s/%s", datadir, XLOGDIR);
			if (FUNC3(fpath, fname))
				return FUNC2(fpath);
		}
	}

	/* could not locate WAL file */
	if (fname)
		FUNC0("could not locate WAL file \"%s\"", fname);
	else
		FUNC0("could not find any WAL file");

	return NULL;				/* not reached */
}