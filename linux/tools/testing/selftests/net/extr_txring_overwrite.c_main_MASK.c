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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const) ; 
 int FUNC4 () ; 
 int FUNC5 (char**) ; 

int FUNC6(int argc, char **argv)
{
	const char payload_patterns[] = "ab";
	char *ring;
	int fdr, fdt, ret = 0;

	fdr = FUNC4();
	fdt = FUNC5(&ring);

	FUNC3(fdt, ring, payload_patterns[0]);
	FUNC3(fdt, ring, payload_patterns[1]);

	ret |= FUNC2(fdr, payload_patterns[0]);
	ret |= FUNC2(fdr, payload_patterns[1]);

	if (FUNC0(fdt))
		FUNC1(1, errno, "close t");
	if (FUNC0(fdr))
		FUNC1(1, errno, "close r");

	return ret;
}