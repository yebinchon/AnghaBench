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
 int FUNC0 (char*) ; 

int FUNC1(void)
{
	int ret;

	ret = FUNC0("date");
	ret = FUNC0("./inconsistency-check -c 0 -t 20");
	ret |= FUNC0("./nanosleep");
	ret |= FUNC0("./nsleep-lat");
	return ret;

}