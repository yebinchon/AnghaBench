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
 int FUNC0 (char const) ; 

int
FUNC1(const char *a, const char *b)
{
	int rv;
	for (;;) {
		if ((*a == 0) && (*b == 0)) {
			return (0);
		}
		if ((rv = (FUNC0(*a) - FUNC0(*b))) != 0) {
			return (rv);
		}
		a++;
		b++;
	}
	return (0);
}