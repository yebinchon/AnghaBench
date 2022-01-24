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
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char*,unsigned long*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int FUNC7(void)
{
	FILE *f;
	int ret = -1;
	char line[1024] = {0};
	unsigned long lock_size = 0;

	f = FUNC2("/proc/self/status", "r");
	if (!f) {
		FUNC3("fopen");
		return -1;
	}

	while (FUNC1(line, 1024, f)) {
		if (FUNC6(line, "VmLck")) {
			ret = FUNC5(line, "VmLck:\t%8lu kB", &lock_size);
			if (ret <= 0) {
				FUNC4("sscanf() on VmLck error: %s: %d\n",
						line, ret);
				FUNC0(f);
				return -1;
			}
			FUNC0(f);
			return (int)(lock_size << 10);
		}
	}

	FUNC3("cann't parse VmLck in /proc/self/status\n");
	FUNC0(f);
	return -1;
}