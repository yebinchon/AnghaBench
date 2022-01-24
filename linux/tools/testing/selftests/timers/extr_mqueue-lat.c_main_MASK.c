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
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC5(int argc, char **argv)
{
	int ret;

	FUNC4("Mqueue latency :                          ");
	FUNC0(stdout);

	ret = FUNC3();
	if (ret < 0) {
		FUNC4("[FAILED]\n");
		return FUNC1();
	}
	FUNC4("[OK]\n");
	return FUNC2();
}