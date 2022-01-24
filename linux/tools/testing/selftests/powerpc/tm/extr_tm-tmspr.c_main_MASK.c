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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  num_loops ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  test_tmspr ; 

int FUNC4(int argc, char *argv[])
{
	if (argc > 1) {
		if (FUNC2(argv[1], "-h") == 0) {
			FUNC1("Syntax:\t [<num loops>]\n");
			return 0;
		} else {
			num_loops = FUNC0(argv[1]);
		}
	}
	return FUNC3(test_tmspr, "tm_tmspr");
}