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
typedef  int /*<<< orphan*/  tofile ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  fromfile ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  enableFsync ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

void
FUNC15(char *fromdir, char *todir, bool recurse)
{
	DIR		   *xldir;
	struct dirent *xlde;
	char		fromfile[MAXPGPATH * 2];
	char		tofile[MAXPGPATH * 2];

	if (FUNC3(todir) != 0)
		FUNC8(ERROR,
				(FUNC9(),
				 FUNC10("could not create directory \"%s\": %m", todir)));

	xldir = FUNC0(fromdir);

	while ((xlde = FUNC4(xldir, fromdir)) != NULL)
	{
		struct stat fst;

		/* If we got a cancel signal during the copy of the directory, quit */
		FUNC1();

		if (FUNC14(xlde->d_name, ".") == 0 ||
			FUNC14(xlde->d_name, "..") == 0)
			continue;

		FUNC13(fromfile, sizeof(fromfile), "%s/%s", fromdir, xlde->d_name);
		FUNC13(tofile, sizeof(tofile), "%s/%s", todir, xlde->d_name);

		if (FUNC12(fromfile, &fst) < 0)
			FUNC8(ERROR,
					(FUNC9(),
					 FUNC10("could not stat file \"%s\": %m", fromfile)));

		if (FUNC5(fst.st_mode))
		{
			/* recurse to handle subdirectories */
			if (recurse)
				FUNC15(fromfile, tofile, true);
		}
		else if (FUNC6(fst.st_mode))
			FUNC7(fromfile, tofile);
	}
	FUNC2(xldir);

	/*
	 * Be paranoid here and fsync all files to ensure the copy is really done.
	 * But if fsync is disabled, we're done.
	 */
	if (!enableFsync)
		return;

	xldir = FUNC0(todir);

	while ((xlde = FUNC4(xldir, todir)) != NULL)
	{
		struct stat fst;

		if (FUNC14(xlde->d_name, ".") == 0 ||
			FUNC14(xlde->d_name, "..") == 0)
			continue;

		FUNC13(tofile, sizeof(tofile), "%s/%s", todir, xlde->d_name);

		/*
		 * We don't need to sync subdirectories here since the recursive
		 * copydir will do it before it returns
		 */
		if (FUNC12(tofile, &fst) < 0)
			FUNC8(ERROR,
					(FUNC9(),
					 FUNC10("could not stat file \"%s\": %m", tofile)));

		if (FUNC6(fst.st_mode))
			FUNC11(tofile, false);
	}
	FUNC2(xldir);

	/*
	 * It's important to fsync the destination directory itself as individual
	 * file fsyncs don't guarantee that the directory entry for the file is
	 * synced. Recent versions of ext4 have made the window much wider but
	 * it's been true for ext3 and other filesystems in the past.
	 */
	FUNC11(todir, true);
}