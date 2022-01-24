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
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  Trigger ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RI_ConstraintInfo ;

/* Variables and functions */
 scalar_t__ RI_KEYS_NONE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

bool
FUNC4(Trigger *trigger, Relation pk_rel,
							  TupleTableSlot *oldslot, TupleTableSlot *newslot)
{
	const RI_ConstraintInfo *riinfo;

	riinfo = FUNC1(trigger, pk_rel, true);

	/*
	 * If any old key value is NULL, the row could not have been referenced by
	 * an FK row, so no check is needed.
	 */
	if (FUNC3(FUNC0(pk_rel), oldslot, riinfo, true) != RI_KEYS_NONE_NULL)
		return false;

	/* If all old and new key values are equal, no check is needed */
	if (newslot && FUNC2(pk_rel, oldslot, newslot, riinfo, true))
		return false;

	/* Else we need to fire the trigger. */
	return true;
}