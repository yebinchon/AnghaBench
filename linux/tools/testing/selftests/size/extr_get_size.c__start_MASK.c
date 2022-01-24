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
struct sysinfo {unsigned long totalram; unsigned long freeram; unsigned long bufferram; int /*<<< orphan*/  mem_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sysinfo*) ; 

void FUNC4(void)
{
	int ccode;
	struct sysinfo info;
	unsigned long used;
	static const char *test_name = " get runtime memory use\n";

	FUNC1("TAP version 13\n");
	FUNC1("# Testing system size.\n");

	ccode = FUNC3(&info);
	if (ccode < 0) {
		FUNC1("not ok 1");
		FUNC1(test_name);
		FUNC1(" ---\n reason: \"could not get sysinfo\"\n ...\n");
		FUNC0(ccode);
	}
	FUNC1("ok 1");
	FUNC1(test_name);

	/* ignore cache complexities for now */
	used = info.totalram - info.freeram - info.bufferram;
	FUNC1("# System runtime memory report (units in Kilobytes):\n");
	FUNC1(" ---\n");
	FUNC2(" Total:  ", info.totalram, info.mem_unit);
	FUNC2(" Free:   ", info.freeram, info.mem_unit);
	FUNC2(" Buffer: ", info.bufferram, info.mem_unit);
	FUNC2(" In use: ", used, info.mem_unit);
	FUNC1(" ...\n");
	FUNC1("1..1\n");

	FUNC0(0);
}