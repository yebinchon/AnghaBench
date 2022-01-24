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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 

int FUNC7(int argc, char **argv)
{
	double freq_base, freq_step;
	int i, j, fails = 0;

	FUNC0();

	FUNC3("Checking response to frequency step:\n");
	FUNC3("  Step           1st interval              2nd interval\n");
	FUNC3("             Freq    Dev     Max       Freq    Dev     Max\n");

	for (i = 2; i >= 0; i--) {
		for (j = 0; j < 5; j++) {
			freq_base = (FUNC4() % (1 << 24) - (1 << 23)) / 65536e6;
			freq_step = 10e-6 * (1 << (6 * i));
			fails += FUNC5(0, freq_base, freq_step);
		}
	}

	FUNC6(0.0);

	if (fails)
		return FUNC1();

	return FUNC2();
}