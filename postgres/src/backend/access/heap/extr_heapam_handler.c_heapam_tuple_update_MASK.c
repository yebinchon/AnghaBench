#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_tableOid; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; } ;
typedef  scalar_t__ TM_Result ;
typedef  int /*<<< orphan*/  TM_FailureData ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TM_Ok ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static TM_Result
FUNC6(Relation relation, ItemPointer otid, TupleTableSlot *slot,
					CommandId cid, Snapshot snapshot, Snapshot crosscheck,
					bool wait, TM_FailureData *tmfd,
					LockTupleMode *lockmode, bool *update_indexes)
{
	bool		shouldFree = true;
	HeapTuple	tuple = FUNC0(slot, true, &shouldFree);
	TM_Result	result;

	/* Update the tuple with table oid */
	slot->tts_tableOid = FUNC3(relation);
	tuple->t_tableOid = slot->tts_tableOid;

	result = FUNC4(relation, otid, tuple, cid, crosscheck, wait,
						 tmfd, lockmode);
	FUNC2(&tuple->t_self, &slot->tts_tid);

	/*
	 * Decide whether new index entries are needed for the tuple
	 *
	 * Note: heap_update returns the tid (location) of the new tuple in the
	 * t_self field.
	 *
	 * If it's a HOT update, we mustn't insert new index entries.
	 */
	*update_indexes = result == TM_Ok && !FUNC1(tuple);

	if (shouldFree)
		FUNC5(tuple);

	return result;
}