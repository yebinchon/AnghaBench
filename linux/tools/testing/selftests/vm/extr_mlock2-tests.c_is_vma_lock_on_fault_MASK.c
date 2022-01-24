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
 int /*<<< orphan*/  LOCKED ; 
 int /*<<< orphan*/  RSS ; 
 int /*<<< orphan*/  SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long) ; 
 int FUNC6 (char*,char*,unsigned long*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(unsigned long addr)
{
	bool ret = false;
	bool locked;
	FILE *smaps = NULL;
	unsigned long vma_size, vma_rss;
	char *line = NULL;
	char *value;
	size_t size = 0;

	locked = FUNC3(addr, LOCKED);
	if (!locked)
		goto out;

	smaps = FUNC5(addr);
	if (!smaps) {
		FUNC4("Unable to parse /proc/self/smaps\n");
		goto out;
	}

	while (FUNC2(&line, &size, smaps) > 0) {
		if (!FUNC8(line, SIZE)) {
			FUNC1(line);
			line = NULL;
			size = 0;
			continue;
		}

		value = line + FUNC7(SIZE);
		if (FUNC6(value, "%lu kB", &vma_size) < 1) {
			FUNC4("Unable to parse smaps entry for Size\n");
			goto out;
		}
		break;
	}

	while (FUNC2(&line, &size, smaps) > 0) {
		if (!FUNC8(line, RSS)) {
			FUNC1(line);
			line = NULL;
			size = 0;
			continue;
		}

		value = line + FUNC7(RSS);
		if (FUNC6(value, "%lu kB", &vma_rss) < 1) {
			FUNC4("Unable to parse smaps entry for Rss\n");
			goto out;
		}
		break;
	}

	ret = locked && (vma_rss < vma_size);
out:
	FUNC1(line);
	if (smaps)
		FUNC0(smaps);
	return ret;
}