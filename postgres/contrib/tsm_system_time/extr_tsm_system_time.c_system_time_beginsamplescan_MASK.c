#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_5__ {scalar_t__ tsm_state; } ;
struct TYPE_4__ {double millis; scalar_t__ doneblocks; int /*<<< orphan*/  lt; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ SystemTimeSamplerData ;
typedef  TYPE_2__ SampleScanState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLESAMPLE_ARGUMENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (double) ; 

__attribute__((used)) static void
FUNC5(SampleScanState *node,
							Datum *params,
							int nparams,
							uint32 seed)
{
	SystemTimeSamplerData *sampler = (SystemTimeSamplerData *) node->tsm_state;
	double		millis = FUNC0(params[0]);

	if (millis < 0 || FUNC4(millis))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_TABLESAMPLE_ARGUMENT),
				 FUNC3("sample collection time must not be negative")));

	sampler->seed = seed;
	sampler->millis = millis;
	sampler->lt = InvalidOffsetNumber;
	sampler->doneblocks = 0;
	/* start_time, lb will be initialized during first NextSampleBlock call */
	/* we intentionally do not change nblocks/firstblock/step here */
}