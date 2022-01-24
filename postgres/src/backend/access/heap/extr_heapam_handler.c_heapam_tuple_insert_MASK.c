#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_tableOid; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  int /*<<< orphan*/  BulkInsertState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(Relation relation, TupleTableSlot *slot, CommandId cid,
					int options, BulkInsertState bistate)
{
	bool		shouldFree = true;
	HeapTuple	tuple = FUNC0(slot, true, &shouldFree);

	/* Update the tuple with table oid */
	slot->tts_tableOid = FUNC2(relation);
	tuple->t_tableOid = slot->tts_tableOid;

	/* Perform the insertion, and copy the resulting ItemPointer */
	FUNC3(relation, tuple, cid, options, bistate);
	FUNC1(&tuple->t_self, &slot->tts_tid);

	if (shouldFree)
		FUNC4(tuple);
}