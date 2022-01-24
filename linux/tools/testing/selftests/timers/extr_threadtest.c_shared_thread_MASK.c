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
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ LISTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/ * global_list ; 
 int /*<<< orphan*/  list_lock ; 
 scalar_t__ listcount ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *FUNC4(void *arg)
{
	while (!done) {
		/* protect the list */
		FUNC2(&list_lock);

		/* see if we're ready to check the list */
		if (listcount >= LISTSIZE) {
			FUNC0(global_list, LISTSIZE);
			listcount = 0;
		}
		FUNC1(CLOCK_MONOTONIC, &global_list[listcount++]);

		FUNC3(&list_lock);
	}
	return NULL;
}