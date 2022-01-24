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
struct srcu_struct {int completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct srcu_struct*,int,int const) ; 

void FUNC4(struct srcu_struct *sp)
{
	int idx;
	/*
	 * This code assumes that try_check_zero will succeed anyway,
	 * so there is no point in multiple tries.
	 */
	const int trycount = 1;

	FUNC1();

	/* Ignore the lock, as multiple writers aren't working yet anyway. */

	idx = 1 ^ (sp->completed & 1);

	/* For comments see srcu_advance_batches. */

	FUNC0(FUNC3(sp, idx, trycount));

	FUNC2(sp);

	FUNC0(FUNC3(sp, idx^1, trycount));
}