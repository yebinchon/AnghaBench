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
struct erase_info_user {int start; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMERASE ; 
 int /*<<< orphan*/  MEMUNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  erasesize ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct erase_info_user*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (char const*) ; 
 int mtdsize ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC6(const char *mtd)
{
	int fd;
	struct erase_info_user mtdEraseInfo;

	if (quiet < 2)
		FUNC2(stderr, "Erasing %s ...\n", mtd);

	fd = FUNC5(mtd);
	if(fd < 0) {
		FUNC2(stderr, "Could not open mtd device: %s\n", mtd);
		FUNC1(1);
	}

	mtdEraseInfo.length = erasesize;

	for (mtdEraseInfo.start = 0;
		 mtdEraseInfo.start < mtdsize;
		 mtdEraseInfo.start += erasesize) {
		if (FUNC4(fd, mtdEraseInfo.start)) {
			if (!quiet)
				FUNC2(stderr, "\nSkipping bad block at 0x%x   ", mtdEraseInfo.start);
		} else {
			FUNC3(fd, MEMUNLOCK, &mtdEraseInfo);
			if(FUNC3(fd, MEMERASE, &mtdEraseInfo))
				FUNC2(stderr, "Failed to erase block on %s at 0x%x\n", mtd, mtdEraseInfo.start);
		}
	}

	FUNC0(fd);
	return 0;

}