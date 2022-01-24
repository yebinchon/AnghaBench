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
typedef  int /*<<< orphan*/  set ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned int *first, unsigned int *last)
{
	unsigned int i;

	*first = -1U;
	*last = 0;
	for (i = 0; i < 4096; i++) {
		cpu_set_t set;
		FUNC1(&set);
		FUNC0(i, &set);
		if (FUNC3(FUNC2(), sizeof(set), &set) == 0) {
			if (i < *first)
				*first = i;
			if (i > *last)
				*last = i;
		}
	}
}