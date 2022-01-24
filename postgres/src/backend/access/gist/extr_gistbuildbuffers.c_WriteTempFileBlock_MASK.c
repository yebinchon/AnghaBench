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
typedef  int /*<<< orphan*/  BufFile ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 

__attribute__((used)) static void
FUNC6(BufFile *file, long blknum, void *ptr)
{
	if (FUNC0(file, blknum) != 0)
		FUNC2(ERROR, "could not seek temporary file: %m");
	if (FUNC1(file, ptr, BLCKSZ) != BLCKSZ)
	{
		/*
		 * the other errors in Read/WriteTempFileBlock shouldn't happen, but
		 * an error at write can easily happen if you run out of disk space.
		 */
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not write block %ld of temporary file: %m",
						blknum)));
	}
}