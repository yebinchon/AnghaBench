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
typedef  int /*<<< orphan*/  Timestamp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(Timestamp ts1, int overflow1, Timestamp ts2)
{
	/*
	 * All the timestamps we deal with in jsonpath are produced by
	 * to_datetime() method.  So, they should be valid.
	 */
	FUNC0(FUNC1(ts2));

	/*
	 * Timestamp, which exceed lower (upper) bound, is always lower (higher)
	 * than any valid timestamp except minus (plus) infinity.
	 */
	if (overflow1)
	{
		if (overflow1 < 0)
		{
			if (FUNC2(ts2))
				return 1;
			else
				return -1;
		}
		if (overflow1 > 0)
		{
			if (FUNC3(ts2))
				return -1;
			else
				return 1;
		}
	}

	return FUNC4(ts1, ts2);
}