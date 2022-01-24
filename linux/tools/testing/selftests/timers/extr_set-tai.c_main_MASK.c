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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC6(int argc, char **argv)
{
	int i, ret;

	ret = FUNC1();
	FUNC4("tai offset started at %i\n", ret);

	FUNC4("Checking tai offsets can be properly set: ");
	FUNC0(stdout);
	for (i = 1; i <= 60; i++) {
		ret = FUNC5(i);
		ret = FUNC1();
		if (ret != i) {
			FUNC4("[FAILED] expected: %i got %i\n", i, ret);
			return FUNC2();
		}
	}
	FUNC4("[OK]\n");
	return FUNC3();
}