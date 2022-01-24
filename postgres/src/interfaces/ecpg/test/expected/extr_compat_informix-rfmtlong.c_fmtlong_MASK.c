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
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (long,char const*,char*) ; 

__attribute__((used)) static void
FUNC3(long lng, const char *fmt)
{
	static int i;
	int r;
	char buf[30];

	r = FUNC2(lng, fmt, buf);
	FUNC1("r: %d ", r);
	if (r == 0)
	{
		FUNC1("%d: %s (fmt was: %s)\n", i++, buf, fmt);
	}
	else
		FUNC0(r);
}