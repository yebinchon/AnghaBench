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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char** FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

bool
FUNC8(const char *path, bool rmtopdir)
{
	bool		result = true;
	char		pathbuf[MAXPGPATH];
	char	  **filenames;
	char	  **filename;
	struct stat statbuf;

	/*
	 * we copy all the names out of the directory before we start modifying
	 * it.
	 */
	filenames = FUNC3(path);

	if (filenames == NULL)
		return false;

	/* now we have the names we can start removing things */
	for (filename = filenames; *filename; filename++)
	{
		FUNC6(pathbuf, MAXPGPATH, "%s/%s", path, *filename);

		/*
		 * It's ok if the file is not there anymore; we were just about to
		 * delete it anyway.
		 *
		 * This is not an academic possibility. One scenario where this
		 * happens is when bgwriter has a pending unlink request for a file in
		 * a database that's being dropped. In dropdb(), we call
		 * ForgetDatabaseSyncRequests() to flush out any such pending unlink
		 * requests, but because that's asynchronous, it's not guaranteed that
		 * the bgwriter receives the message in time.
		 */
		if (FUNC1(pathbuf, &statbuf) != 0)
		{
			if (errno != ENOENT)
			{
				FUNC2("could not stat file or directory \"%s\": %m",
							   pathbuf);
				result = false;
			}
			continue;
		}

		if (FUNC0(statbuf.st_mode))
		{
			/* call ourselves recursively for a directory */
			if (!FUNC8(pathbuf, true))
			{
				/* we already reported the error */
				result = false;
			}
		}
		else
		{
			if (FUNC7(pathbuf) != 0)
			{
				if (errno != ENOENT)
				{
					FUNC2("could not remove file or directory \"%s\": %m",
								   pathbuf);
					result = false;
				}
			}
		}
	}

	if (rmtopdir)
	{
		if (FUNC5(path) != 0)
		{
			FUNC2("could not remove file or directory \"%s\": %m",
						   path);
			result = false;
		}
	}

	FUNC4(filenames);

	return result;
}