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
typedef  int uint64_t ;
struct TYPE_3__ {scalar_t__ ebb_count; int /*<<< orphan*/  spurious; } ;
struct TYPE_4__ {int /*<<< orphan*/  trace; TYPE_1__ stats; } ;

/* Variables and functions */
 int BESCR_PMEO ; 
 int /*<<< orphan*/  MMCR0_PMAO ; 
 scalar_t__ NUMBER_OF_EBBS ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  SPRN_SIAR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ ebb_state ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	uint64_t siar, val;

	val = FUNC1(SPRN_BESCR);
	if (!(val & BESCR_PMEO)) {
		ebb_state.stats.spurious++;
		goto out;
	}

	ebb_state.stats.ebb_count++;
	FUNC4(ebb_state.trace, ebb_state.stats.ebb_count);

	/* Resets the PMC */
	FUNC0(1, sample_period);

out:
	if (ebb_state.stats.ebb_count == NUMBER_OF_EBBS)
		/* Reset but leave counters frozen */
		FUNC3(MMCR0_PMAO);
	else
		/* Unfreezes */
		FUNC2();

	/* Do some stuff to chew some cycles and pop the counter */
	siar = FUNC1(SPRN_SIAR);
	FUNC5(ebb_state.trace, SPRN_SIAR, siar);

	val = FUNC1(SPRN_PMC1);
	FUNC5(ebb_state.trace, SPRN_PMC1, val);

	val = FUNC1(SPRN_MMCR0);
	FUNC5(ebb_state.trace, SPRN_MMCR0, val);
}