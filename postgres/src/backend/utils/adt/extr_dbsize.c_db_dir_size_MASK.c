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
struct stat {scalar_t__ st_size; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int64
FUNC10(const char *path)
{
	int64		dirsize = 0;
	struct dirent *direntry;
	DIR		   *dirdesc;
	char		filename[MAXPGPATH * 2];

	dirdesc = FUNC0(path);

	if (!dirdesc)
		return 0;

	while ((direntry = FUNC3(dirdesc, path)) != NULL)
	{
		struct stat fst;

		FUNC1();

		if (FUNC9(direntry->d_name, ".") == 0 ||
			FUNC9(direntry->d_name, "..") == 0)
			continue;

		FUNC7(filename, sizeof(filename), "%s/%s", path, direntry->d_name);

		if (FUNC8(filename, &fst) < 0)
		{
			if (errno == ENOENT)
				continue;
			else
				FUNC4(ERROR,
						(FUNC5(),
						 FUNC6("could not stat file \"%s\": %m", filename)));
		}
		dirsize += fst.st_size;
	}

	FUNC2(dirdesc);
	return dirsize;
}