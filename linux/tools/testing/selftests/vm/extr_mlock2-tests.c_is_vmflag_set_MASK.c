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
 char const* VMFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char const*) ; 

__attribute__((used)) static bool FUNC7(unsigned long addr, const char *vmflag)
{
	char *line = NULL;
	char *flags;
	size_t size = 0;
	bool ret = false;
	FILE *smaps;

	smaps = FUNC4(addr);
	if (!smaps) {
		FUNC3("Unable to parse /proc/self/smaps\n");
		goto out;
	}

	while (FUNC2(&line, &size, smaps) > 0) {
		if (!FUNC6(line, VMFLAGS)) {
			FUNC1(line);
			line = NULL;
			size = 0;
			continue;
		}

		flags = line + FUNC5(VMFLAGS);
		ret = (FUNC6(flags, vmflag) != NULL);
		goto out;
	}

out:
	FUNC1(line);
	FUNC0(smaps);
	return ret;
}