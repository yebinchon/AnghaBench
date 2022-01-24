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
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

int FUNC3(void *s1, void *s2, int n, int offset, char *test_name)
{
	char *s1c, *s2c;

	s1c = s1;
	s1c += offset;
	s2c = s2;
	s2c += offset;

	if (FUNC1(s1c, s2c, n)) {
		if (debug) {
			FUNC2("\n  Compare failed. Offset:%i length:%i\n",
			       offset, n);
			FUNC0(s1c, s2c, n, test_name);
		}
		return 1;
	}
	return 0;
}