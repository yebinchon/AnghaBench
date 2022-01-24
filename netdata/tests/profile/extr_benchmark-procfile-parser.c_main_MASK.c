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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long,float) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(int argc, char **argv)
{
	(void)argc; (void)argv;

	int i, max = 1000000;

	unsigned long c1 = 0;
	FUNC2();
	for(i = 0; i < max ; i++)
		c1 += FUNC2();

	unsigned long c2 = 0;
	FUNC1();
	for(i = 0; i < max ; i++)
		c2 += FUNC1();

	FUNC0("netdata internal: completed in %lu cycles, %lu cycles per read, %0.2f %%.\n", c1, c1 / max, (float)c1 * 100.0 / (float)c1);
	FUNC0("method1         : completed in %lu cycles, %lu cycles per read, %0.2f %%.\n", c2, c2 / max, (float)c2 * 100.0 / (float)c1);

	return 0;
}