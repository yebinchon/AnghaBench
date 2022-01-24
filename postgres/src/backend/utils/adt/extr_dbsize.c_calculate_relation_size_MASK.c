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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 

__attribute__((used)) static int64
FUNC7(RelFileNode *rfn, BackendId backend, ForkNumber forknum)
{
	int64		totalsize = 0;
	char	   *relationpath;
	char		pathname[MAXPGPATH];
	unsigned int segcount = 0;

	relationpath = FUNC4(*rfn, backend, forknum);

	for (segcount = 0;; segcount++)
	{
		struct stat fst;

		FUNC0();

		if (segcount == 0)
			FUNC5(pathname, MAXPGPATH, "%s",
					 relationpath);
		else
			FUNC5(pathname, MAXPGPATH, "%s.%u",
					 relationpath, segcount);

		if (FUNC6(pathname, &fst) < 0)
		{
			if (errno == ENOENT)
				break;
			else
				FUNC1(ERROR,
						(FUNC2(),
						 FUNC3("could not stat file \"%s\": %m", pathname)));
		}
		totalsize += fst.st_size;
	}

	return totalsize;
}