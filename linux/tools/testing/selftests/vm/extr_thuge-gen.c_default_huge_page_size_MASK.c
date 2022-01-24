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
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,unsigned long*) ; 

unsigned long FUNC4(void)
{
	unsigned long hps = 0;
	char *line = NULL;
	size_t linelen = 0;
	FILE *f = FUNC0("/proc/meminfo", "r");
	if (!f)
		return 0;
	while (FUNC2(&line, &linelen, f) > 0) {
		if (FUNC3(line, "Hugepagesize:       %lu kB", &hps) == 1) {
			hps <<= 10;
			break;
		}
	}
	FUNC1(line);
	return hps;
}