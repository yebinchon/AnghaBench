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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAPS_LINE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,char*,void**,void**,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int vsyscall_map_r ; 
 int vsyscall_map_x ; 

__attribute__((used)) static int FUNC6(void)
{
#ifdef __x86_64__
	int nerrs = 0;
	FILE *maps;
	char line[MAPS_LINE_LEN];
	bool found = false;

	maps = FUNC2("/proc/self/maps", "r");
	if (!maps) {
		FUNC3("[WARN]\tCould not open /proc/self/maps -- assuming vsyscall is r-x\n");
		vsyscall_map_r = true;
		return 0;
	}

	while (FUNC1(line, MAPS_LINE_LEN, maps)) {
		char r, x;
		void *start, *end;
		char name[MAPS_LINE_LEN];

		/* sscanf() is safe here as strlen(name) >= strlen(line) */
		if (FUNC4(line, "%p-%p %c-%cp %*x %*x:%*x %*u %s",
			   &start, &end, &r, &x, name) != 5)
			continue;

		if (FUNC5(name, "[vsyscall]"))
			continue;

		FUNC3("\tvsyscall map: %s", line);

		if (start != (void *)0xffffffffff600000 ||
		    end != (void *)0xffffffffff601000) {
			FUNC3("[FAIL]\taddress range is nonsense\n");
			nerrs++;
		}

		FUNC3("\tvsyscall permissions are %c-%c\n", r, x);
		vsyscall_map_r = (r == 'r');
		vsyscall_map_x = (x == 'x');

		found = true;
		break;
	}

	FUNC0(maps);

	if (!found) {
		FUNC3("\tno vsyscall map in /proc/self/maps\n");
		vsyscall_map_r = false;
		vsyscall_map_x = false;
	}

	return nerrs;
#else
	return 0;
#endif
}