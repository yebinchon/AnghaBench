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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *fmt, const char *input)
{
	static int i;
	char dbuf[11];
	date d;
	int q, r;

	r = FUNC3(&d, fmt, input);
	FUNC1("r: %d ", r);
	if (r == 0)
	{
		q = FUNC2(d, dbuf);
		FUNC1("q: %d ", q);
		if (q == 0)
		{
			FUNC1("date %d: %s\n", i++, dbuf);
		}
		else
			FUNC1("\n");
	}
	else
		FUNC0(r);
}