#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_2__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*) ; 
 int FUNC8 (struct event*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int sample_period ; 

__attribute__((used)) static int FUNC13(void)
{
	struct event event;
	u64 val;
	int i;

	FUNC1(!FUNC4());

	FUNC6(&event, 0x1001e, "cycles");
	FUNC7(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC8(&event));
	FUNC0(FUNC3(&event));

	val = FUNC10(SPRN_EBBHR);
	FUNC0(val != 0);

	/* Make sure it overflows quickly */
	sample_period = 1000;
	FUNC11(SPRN_PMC1, FUNC12(sample_period));

	/* Spin to make sure the event has time to overflow */
	for (i = 0; i < 1000; i++)
		FUNC9();

	FUNC2();

	/* We expect to see the PMU frozen & PMAO set */
	val = FUNC10(SPRN_MMCR0);
	FUNC0(val != 0x0000000080000080);

	FUNC5(&event);

	FUNC2();

	/* The real test is that we never took an EBB at 0x0 */

	return 0;
}