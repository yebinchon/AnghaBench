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
 unsigned long COUNT ; 
 unsigned long DSCR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
	unsigned long i, dscr = 0;

	FUNC7(FUNC3());
	FUNC5(dscr);

	for (i = 0; i < COUNT; i++) {
		unsigned long cur_dscr, cur_dscr_usr;
		double ret = FUNC8(FUNC4());

		if (ret < 0.001) {
			dscr++;
			if (dscr > DSCR_MAX)
				dscr = 0;

			FUNC5(dscr);
		}

		cur_dscr = FUNC1();
		if (cur_dscr != dscr) {
			FUNC0(stderr, "Kernel DSCR should be %ld but "
					"is %ld\n", dscr, cur_dscr);
			return 1;
		}

		ret = FUNC8(FUNC4());
		if (ret < 0.001) {
			dscr++;
			if (dscr > DSCR_MAX)
				dscr = 0;

			FUNC6(dscr);
		}

		cur_dscr_usr = FUNC2();
		if (cur_dscr_usr != dscr) {
			FUNC0(stderr, "User DSCR should be %ld but "
					"is %ld\n", dscr, cur_dscr_usr);
			return 1;
		}
	}
	return 0;
}