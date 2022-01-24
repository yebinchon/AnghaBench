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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,char*,unsigned long*,unsigned long*,char*,unsigned long*,char*,unsigned long*,char*) ; 

__attribute__((used)) static FILE *FUNC7(unsigned long addr)
{
	FILE *file;
	char *line = NULL;
	size_t size = 0;
	unsigned long start, end;
	char perms[5];
	unsigned long offset;
	char dev[32];
	unsigned long inode;
	char path[BUFSIZ];

	file = FUNC2("/proc/self/smaps", "r");
	if (!file) {
		FUNC5("fopen smaps");
		FUNC0(1);
	}

	while (FUNC4(&line, &size, file) > 0) {
		if (FUNC6(line, "%lx-%lx %s %lx %s %lu %s\n",
			   &start, &end, perms, &offset, dev, &inode, path) < 6)
			goto next;

		if (start <= addr && addr < end)
			goto out;

next:
		FUNC3(line);
		line = NULL;
		size = 0;
	}

	FUNC1(file);
	file = NULL;

out:
	FUNC3(line);
	return file;
}