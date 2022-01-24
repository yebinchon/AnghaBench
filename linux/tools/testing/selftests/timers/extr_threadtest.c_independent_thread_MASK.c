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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int LISTSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  done ; 

void *FUNC2(void *arg)
{
	struct timespec my_list[LISTSIZE];
	int count;

	while (!done) {
		/* fill the list */
		for (count = 0; count < LISTSIZE; count++)
			FUNC1(CLOCK_MONOTONIC, &my_list[count]);
		FUNC0(my_list, LISTSIZE);
	}
	return NULL;
}