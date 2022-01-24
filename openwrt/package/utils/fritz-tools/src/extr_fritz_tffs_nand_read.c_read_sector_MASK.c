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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ TFFS_SECTOR_SIZE ; 
 int /*<<< orphan*/  mtdfd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readbuf ; 

__attribute__((used)) static int FUNC1(off_t pos)
{
	if (FUNC0(mtdfd, readbuf, TFFS_SECTOR_SIZE, pos) != TFFS_SECTOR_SIZE) {
		return -1;
	}

	return 0;
}