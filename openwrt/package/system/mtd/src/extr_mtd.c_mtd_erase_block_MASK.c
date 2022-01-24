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
 int /*<<< orphan*/  erasesize ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct erase_info_user*) ; 

int FUNC1(int fd, int offset)
{
	struct erase_info_user mtdEraseInfo;

	mtdEraseInfo.start = offset;
	mtdEraseInfo.length = erasesize;
	FUNC0(fd, MEMUNLOCK, &mtdEraseInfo);
	if (FUNC0 (fd, MEMERASE, &mtdEraseInfo) < 0)
		return -1;

	return 0;
}