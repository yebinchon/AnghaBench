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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 long FUNC1 (scalar_t__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  running ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  threads_starting ; 
 scalar_t__** varray ; 

void *FUNC5(void *p)
{
	int i, j;
	long rc;
	FUNC4(FUNC2());
	for (i = 0; i < 12; i++)
		for (j = 0; j < 4; j++) {
			varray[i][j] = FUNC3();
			/* Don't want zero because it hides kernel problems */
			if (varray[i][j] == 0)
				j--;
		}
	rc = FUNC1(varray, &threads_starting, &running);
	if (rc == 2)
		FUNC0(stderr, "Caught zeros in VSX compares\n");
	return (void *)rc;
}