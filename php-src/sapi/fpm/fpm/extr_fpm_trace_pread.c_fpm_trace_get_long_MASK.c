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
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  mem_file ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(long addr, long *data) /* {{{ */
{
	if (sizeof(*data) != FUNC0(mem_file, (void *) data, sizeof(*data), (uintptr_t) addr)) {
		FUNC1(ZLOG_SYSERROR, "pread() failed");
		return -1;
	}
	return 0;
}