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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int FUNC5 (char*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(unsigned long addr)
{
	FILE *smaps;
	char *line;
	unsigned long mmupage_size = 0;
	size_t size;

	smaps = FUNC4(addr);
	if (!smaps) {
		FUNC3("Unable to parse /proc/self/smaps\n");
		return 0;
	}

	while (FUNC2(&line, &size, smaps) > 0) {
		if (!FUNC6(line, "MMUPageSize")) {
			FUNC1(line);
			line = NULL;
			size = 0;
			continue;
		}

		/* found the MMUPageSize of this section */
		if (FUNC5(line, "MMUPageSize:    %8lu kB",
					&mmupage_size) < 1) {
			FUNC3("Unable to parse smaps entry for Size:%s\n",
					line);
			break;
		}

	}
	FUNC1(line);
	if (smaps)
		FUNC0(smaps);
	return mmupage_size << 10;
}