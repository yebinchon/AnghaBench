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
typedef  int zic_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int SECSPERDAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * corr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int leapcnt ; 
 int FUNC3 (int,int) ; 
 int* trans ; 

__attribute__((used)) static void
FUNC4(void)
{
	int			i;
	zic_t		last = 0;
	zic_t		prevtrans = 0;

	/*
	 * propagate leap seconds forward
	 */
	for (i = 0; i < leapcnt; ++i)
	{
		if (trans[i] - prevtrans < 28 * SECSPERDAY)
		{
			FUNC1(FUNC0("Leap seconds too close together"));
			FUNC2(EXIT_FAILURE);
		}
		prevtrans = trans[i];
		trans[i] = FUNC3(trans[i], last);
		last = corr[i] += last;
	}
}