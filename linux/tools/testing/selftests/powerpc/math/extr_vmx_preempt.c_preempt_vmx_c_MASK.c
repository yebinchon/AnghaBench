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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  running ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threads_starting ; 
 int /*<<< orphan*/ ** varray ; 

void *FUNC4(void *p)
{
	int i, j;
	FUNC3(FUNC1());
	for (i = 0; i < 12; i++)
		for (j = 0; j < 4; j++)
			varray[i][j] = FUNC2();

	/* Test fails if it ever returns */
	FUNC0(varray, &threads_starting, &running);
	return p;
}