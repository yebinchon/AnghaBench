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
struct vm_boundaries {unsigned long start; unsigned long end; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_boundaries*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned long*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(unsigned long addr, struct vm_boundaries *area)
{
	FILE *file;
	int ret = 1;
	char line[1024] = {0};
	char *end_addr;
	char *stop;
	unsigned long start;
	unsigned long end;

	if (!area)
		return ret;

	file = FUNC2("/proc/self/maps", "r");
	if (!file) {
		FUNC4("fopen");
		return ret;
	}

	FUNC3(area, 0, sizeof(struct vm_boundaries));

	while(FUNC1(line, 1024, file)) {
		end_addr = FUNC7(line, '-');
		if (!end_addr) {
			FUNC5("cannot parse /proc/self/maps\n");
			goto out;
		}
		*end_addr = '\0';
		end_addr++;
		stop = FUNC7(end_addr, ' ');
		if (!stop) {
			FUNC5("cannot parse /proc/self/maps\n");
			goto out;
		}
		stop = '\0';

		FUNC6(line, "%lx", &start);
		FUNC6(end_addr, "%lx", &end);

		if (start <= addr && end > addr) {
			area->start = start;
			area->end = end;
			ret = 0;
			goto out;
		}
	}
out:
	FUNC0(file);
	return ret;
}