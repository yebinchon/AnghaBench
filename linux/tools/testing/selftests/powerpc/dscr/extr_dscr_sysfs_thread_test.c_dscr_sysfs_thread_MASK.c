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
 int COUNT ; 
 int DSCR_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

int FUNC3(void)
{
	unsigned long orig_dscr_default;
	int i, j;

	orig_dscr_default = FUNC1();
	for (i = 0; i < COUNT; i++) {
		for (j = 0; j < DSCR_MAX; j++) {
			FUNC2(j);
			if (FUNC0(j))
				goto fail;
		}
	}
	FUNC2(orig_dscr_default);
	return 0;
fail:
	FUNC2(orig_dscr_default);
	return 1;
}