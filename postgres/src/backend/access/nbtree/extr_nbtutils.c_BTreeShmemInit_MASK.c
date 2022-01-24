#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  max_vacuums; scalar_t__ num_vacuums; scalar_t__ cycle_ctr; } ;
typedef  TYPE_1__ BTVacInfo ;
typedef  scalar_t__ BTCycleId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  MaxBackends ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* btvacinfo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	bool		found;

	btvacinfo = (BTVacInfo *) FUNC2("BTree Vacuum State",
											  FUNC1(),
											  &found);

	if (!IsUnderPostmaster)
	{
		/* Initialize shared memory area */
		FUNC0(!found);

		/*
		 * It doesn't really matter what the cycle counter starts at, but
		 * having it always start the same doesn't seem good.  Seed with
		 * low-order bits of time() instead.
		 */
		btvacinfo->cycle_ctr = (BTCycleId) FUNC3(NULL);

		btvacinfo->num_vacuums = 0;
		btvacinfo->max_vacuums = MaxBackends;
	}
	else
		FUNC0(found);
}