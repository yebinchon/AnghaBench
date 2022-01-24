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
struct child_sync {int /*<<< orphan*/  sem_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct child_sync *sync)
{
	int ret;

	/* Unblock the child now. */
	ret = FUNC1(&sync->sem_child);
	if (ret) {
		FUNC0("Error prodding child");
		return 1;
	}

	return 0;
}