#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int value; } ;
struct event {TYPE_2__ result; } ;
typedef  int int64_t ;
struct TYPE_4__ {int* pmc_count; int ebb_count; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int MMCR0_FC ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int counters_frozen ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct event *event, uint64_t instructions,
			 uint64_t overhead, bool report)
{
	int64_t difference, expected;
	double percentage;

	FUNC0();

	counters_frozen = false;
	FUNC2();
	FUNC4(SPRN_MMCR0, FUNC3(SPRN_MMCR0) & ~MMCR0_FC);

	FUNC6(instructions >> 5);

	counters_frozen = true;
	FUNC2();
	FUNC4(SPRN_MMCR0, FUNC3(SPRN_MMCR0) | MMCR0_FC);

	FUNC1(4, sample_period);

	event->result.value = ebb_state.stats.pmc_count[4-1];
	expected = instructions + overhead;
	difference = event->result.value - expected;
	percentage = (double)difference / event->result.value * 100;

	if (report) {
		FUNC5("Looped for %lu instructions, overhead %lu\n", instructions, overhead);
		FUNC5("Expected %lu\n", expected);
		FUNC5("Actual   %llu\n", event->result.value);
		FUNC5("Delta    %ld, %f%%\n", difference, percentage);
		FUNC5("Took %d EBBs\n", ebb_state.stats.ebb_count);
	}

	if (difference < 0)
		difference = -difference;

	/* Tolerate a difference of up to 0.0001 % */
	difference *= 10000 * 100;
	if (difference / event->result.value)
		return -1;

	return 0;
}