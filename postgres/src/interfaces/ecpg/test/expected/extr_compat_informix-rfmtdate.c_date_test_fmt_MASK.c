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
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static void
FUNC3(date d, const char *fmt)
{
	static int i;
	char buf[200];
	int r;

	r = FUNC2(d, fmt, buf);
	FUNC1("r: %d ", r);
	if (r != 0)
		FUNC0(r);
	else
		FUNC1("date: %d: %s\n", i++, buf);
}