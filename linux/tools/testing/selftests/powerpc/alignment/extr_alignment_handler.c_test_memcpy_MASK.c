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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ debug ; 
 int gotsig ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int testing ; 

int FUNC2(void *dst, void *src, int size, int offset,
		void (*test_func)(char *, char *))
{
	char *s, *d;

	s = src;
	s += offset;
	d = dst;
	d += offset;

	FUNC0(size == 16);
	gotsig = 0;
	testing = 1;

	test_func(s, d); /* run the actual test */

	testing = 0;
	if (gotsig) {
		if (debug)
			FUNC1("  Got signal %i\n", gotsig);
		return 1;
	}
	return 0;
}