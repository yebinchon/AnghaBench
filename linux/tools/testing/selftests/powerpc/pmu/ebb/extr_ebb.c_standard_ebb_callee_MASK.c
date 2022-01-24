#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  no_overflow; int /*<<< orphan*/  ebb_count; int /*<<< orphan*/  spurious; } ;
struct TYPE_4__ {TYPE_1__ stats; scalar_t__* pmc_enable; int /*<<< orphan*/  trace; } ;

/* Variables and functions */
 int BESCR_PMEO ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ ebb_state ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6(void)
{
	int found, i;
	u64 val;

	val = FUNC2(SPRN_BESCR);
	if (!(val & BESCR_PMEO)) {
		ebb_state.stats.spurious++;
		goto out;
	}

	ebb_state.stats.ebb_count++;
	FUNC4(ebb_state.trace, ebb_state.stats.ebb_count);

	val = FUNC2(SPRN_MMCR0);
	FUNC5(ebb_state.trace, SPRN_MMCR0, val);

	found = 0;
	for (i = 1; i <= 6; i++) {
		if (ebb_state.pmc_enable[FUNC0(i)])
			found += FUNC1(i, sample_period);
	}

	if (!found)
		ebb_state.stats.no_overflow++;

out:
	FUNC3();
}