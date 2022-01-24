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
struct erase_info_user {int /*<<< orphan*/  length; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMUNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct erase_info_user*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  mtdsize ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char const*,char) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char *mtd)
{
	struct erase_info_user mtdLockInfo;
	char *next = NULL;
	char *str = NULL;
	int fd;

	if (FUNC6(mtd, ':')) {
		str = FUNC7(mtd);
		mtd = str;
	}

	do {
		next = FUNC6(mtd, ':');
		if (next) {
			*next = 0;
			next++;
		}

		fd = FUNC5(mtd);
		if(fd < 0) {
			FUNC2(stderr, "Could not open mtd device: %s\n", mtd);
			FUNC1(1);
		}

		if (quiet < 2)
			FUNC2(stderr, "Unlocking %s ...\n", mtd);

		mtdLockInfo.start = 0;
		mtdLockInfo.length = mtdsize;
		FUNC4(fd, MEMUNLOCK, &mtdLockInfo);
		FUNC0(fd);
		mtd = next;
	} while (next);

	if (str)
		FUNC3(str);

	return 0;
}