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
typedef  int /*<<< orphan*/  localpath ;

/* Variables and functions */
 int MAXPGPATH ; 
 char** excludeDirContents ; 
 int /*<<< orphan*/ ** excludeFiles ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC5(const char *path, bool is_source)
{
	char		localpath[MAXPGPATH];
	int			excludeIdx;
	const char *filename;

	/* check individual files... */
	for (excludeIdx = 0; excludeFiles[excludeIdx] != NULL; excludeIdx++)
	{
		filename = FUNC0(path);
		if (filename == NULL)
			filename = path;
		else
			filename++;
		if (FUNC3(filename, excludeFiles[excludeIdx]) == 0)
		{
			if (is_source)
				FUNC1("entry \"%s\" excluded from source file list",
							 path);
			else
				FUNC1("entry \"%s\" excluded from target file list",
							 path);
			return true;
		}
	}

	/*
	 * ... And check some directories.  Note that this includes any contents
	 * within the directories themselves.
	 */
	for (excludeIdx = 0; excludeDirContents[excludeIdx] != NULL; excludeIdx++)
	{
		FUNC2(localpath, sizeof(localpath), "%s/",
				 excludeDirContents[excludeIdx]);
		if (FUNC4(path, localpath) == path)
		{
			if (is_source)
				FUNC1("entry \"%s\" excluded from source file list",
							 path);
			else
				FUNC1("entry \"%s\" excluded from target file list",
							 path);
			return true;
		}
	}

	return false;
}