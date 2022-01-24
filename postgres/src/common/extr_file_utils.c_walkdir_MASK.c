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
typedef  int /*<<< orphan*/  subpath ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPGPATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char*) ; 
 int FUNC8 (char*,struct stat*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int FUNC10 (char const*,int) ; 
 int FUNC11 (char const*,int) ; 

__attribute__((used)) static void
FUNC12(const char *path,
		int (*action) (const char *fname, bool isdir),
		bool process_symlinks)
{
	DIR		   *dir;
	struct dirent *de;

	dir = FUNC4(path);
	if (dir == NULL)
	{
		FUNC5("could not open directory \"%s\": %m", path);
		return;
	}

	while (errno = 0, (de = FUNC6(dir)) != NULL)
	{
		char		subpath[MAXPGPATH * 2];
		struct stat fst;
		int			sret;

		if (FUNC9(de->d_name, ".") == 0 ||
			FUNC9(de->d_name, "..") == 0)
			continue;

		FUNC7(subpath, sizeof(subpath), "%s/%s", path, de->d_name);

		if (process_symlinks)
			sret = FUNC8(subpath, &fst);
		else
			sret = FUNC3(subpath, &fst);

		if (sret < 0)
		{
			FUNC5("could not stat file \"%s\": %m", subpath);
			continue;
		}

		if (FUNC1(fst.st_mode))
			(*action) (subpath, false);
		else if (FUNC0(fst.st_mode))
			FUNC12(subpath, action, false);
	}

	if (errno)
		FUNC5("could not read directory \"%s\": %m", path);

	(void) FUNC2(dir);

	/*
	 * It's important to fsync the destination directory itself as individual
	 * file fsyncs don't guarantee that the directory entry for the file is
	 * synced.  Recent versions of ext4 have made the window much wider but
	 * it's been an issue for ext3 and other filesystems in the past.
	 */
	(*action) (path, true);
}