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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 scalar_t__ YEAR_1901 ; 
 scalar_t__ YEAR_1970 ; 
 scalar_t__ YEAR_2038 ; 
 scalar_t__ YEAR_2262 ; 
 scalar_t__ YEAR_MAX ; 
 int FUNC0 () ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char *argv[])
{
	int ret = 0;
	int opt, dangerous = 0;
	time_t start;

	/* Process arguments */
	while ((opt = FUNC1(argc, argv, "d")) != -1) {
		switch (opt) {
		case 'd':
			dangerous = 1;
		}
	}

	start = FUNC6(0);

	/* First test that crazy values don't work */
	if (!FUNC5(YEAR_1901)) {
		ret = -1;
		goto out;
	}
	if (!FUNC5(YEAR_MAX)) {
		ret = -1;
		goto out;
	}
	if (!FUNC2() && !FUNC5(YEAR_2262)) {
		ret = -1;
		goto out;
	}

	/* Now test behavior near edges */
	FUNC5(YEAR_1970);
	ret = FUNC0();
	if (ret)
		goto out;

	FUNC5(YEAR_2038 - 600);
	ret = FUNC0();
	if (ret)
		goto out;

	/* The rest of the tests can blowup on 32bit systems */
	if (FUNC2() && !dangerous)
		goto out;
	/* Test rollover behavior 32bit edge */
	FUNC5(YEAR_2038 - 10);
	ret = FUNC0();
	if (ret)
		goto out;

	FUNC5(YEAR_2262 - 600);
	ret = FUNC0();

out:
	/* restore clock */
	FUNC5(start);
	if (ret)
		return FUNC3();
	return FUNC4();
}