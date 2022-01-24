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
 int FUNC0 (char*) ; 
 int num_loops ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  test_tar ; 

int FUNC4(int argc, char *argv[])
{
	/* A low number of iterations (eg 100) can cause a false pass */
	if (argc > 1) {
		if (FUNC2(argv[1], "-h") == 0) {
			FUNC1("Syntax:\n\t%s [<num loops>]\n",
			       argv[0]);
			return 1;
		} else {
			num_loops = FUNC0(argv[1]);
		}
	}

	FUNC1("Starting, %d loops\n", num_loops);

	return FUNC3(test_tar, "tm_tar");
}