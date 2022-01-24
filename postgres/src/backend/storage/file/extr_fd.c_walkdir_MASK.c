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
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 void FUNC13 (char const*,int,int) ; 
 void FUNC14 (char const*,int,int) ; 

__attribute__((used)) static void
FUNC15(const char *path,
		void (*action) (const char *fname, bool isdir, int elevel),
		bool process_symlinks,
		int elevel)
{
	DIR		   *dir;
	struct dirent *de;

	dir = FUNC0(path);

	while ((de = FUNC3(dir, path, elevel)) != NULL)
	{
		char		subpath[MAXPGPATH * 2];
		struct stat fst;
		int			sret;

		FUNC1();

		if (FUNC12(de->d_name, ".") == 0 ||
			FUNC12(de->d_name, "..") == 0)
			continue;

		FUNC10(subpath, sizeof(subpath), "%s/%s", path, de->d_name);

		if (process_symlinks)
			sret = FUNC11(subpath, &fst);
		else
			sret = FUNC9(subpath, &fst);

		if (sret < 0)
		{
			FUNC6(elevel,
					(FUNC7(),
					 FUNC8("could not stat file \"%s\": %m", subpath)));
			continue;
		}

		if (FUNC5(fst.st_mode))
			(*action) (subpath, false, elevel);
		else if (FUNC4(fst.st_mode))
			FUNC15(subpath, action, false, elevel);
	}

	FUNC2(dir);				/* we ignore any error here */

	/*
	 * It's important to fsync the destination directory itself as individual
	 * file fsyncs don't guarantee that the directory entry for the file is
	 * synced.  However, skip this if AllocateDir failed; the action function
	 * might not be robust against that.
	 */
	if (dir)
		(*action) (path, true, elevel);
}