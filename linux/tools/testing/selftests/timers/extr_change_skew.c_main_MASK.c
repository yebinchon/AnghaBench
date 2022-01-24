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
struct timex {scalar_t__ offset; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_FREQUENCY ; 
 int /*<<< orphan*/  ADJ_OFFSET ; 
 int FUNC0 (struct timex*) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*) ; 

int FUNC6(int argv, char **argc)
{
	struct timex tx;
	int i, ret;

	int ppm[5] = {0, 250, 500, -250, -500};

	/* Kill ntpd */
	ret = FUNC5("killall -9 ntpd");

	/* Make sure there's no offset adjustment going on */
	tx.modes = ADJ_OFFSET;
	tx.offset = 0;
	ret = FUNC0(&tx);

	if (ret < 0) {
		FUNC4("Maybe you're not running as root?\n");
		return -1;
	}

	for (i = 0; i < 5; i++) {
		FUNC4("Using %i ppm adjustment\n", ppm[i]);
		ret = FUNC1(ppm[i]);
		if (ret)
			break;
	}

	/* Set things back */
	tx.modes = ADJ_FREQUENCY;
	tx.offset = 0;
	FUNC0(&tx);

	if (ret) {
		FUNC4("[FAIL]");
		return FUNC2();
	}
	FUNC4("[OK]");
	return FUNC3();
}