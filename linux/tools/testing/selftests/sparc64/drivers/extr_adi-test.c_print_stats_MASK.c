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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  pread_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwrite_stats ; 
 int /*<<< orphan*/  read_stats ; 
 int /*<<< orphan*/  seek_stats ; 
 int /*<<< orphan*/  write_stats ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0("\nSyscall\tCall\tAvgTime\tAvgSize\n"
		       "\tCount\t(ticks)\t(bytes)\n"
		       "-------------------------------\n");

	FUNC1(&read_stats);
	FUNC1(&pread_stats);
	FUNC1(&write_stats);
	FUNC1(&pwrite_stats);
	FUNC1(&seek_stats);
}