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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  SPRN_EBBRR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_pmc1 ; 

__attribute__((used)) static int FUNC4(void)
{
	/* Even though we have EBE=0 we can still see the EBB regs */
	FUNC0(FUNC3(SPRN_BESCR) != 0);
	FUNC0(FUNC3(SPRN_EBBHR) != 0);
	FUNC0(FUNC3(SPRN_EBBRR) != 0);

	FUNC0(FUNC1(write_pmc1));

	/* We can still read from the event, though it is on our parent */
	FUNC0(FUNC2(&event));

	return 0;
}