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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_tableOid; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_tableOid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  int /*<<< orphan*/  BulkInsertState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int,int*) ; 
 int HEAP_INSERT_SPECULATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(Relation relation, TupleTableSlot *slot,
								CommandId cid, int options,
								BulkInsertState bistate, uint32 specToken)
{
	bool		shouldFree = true;
	HeapTuple	tuple = FUNC0(slot, true, &shouldFree);

	/* Update the tuple with table oid */
	slot->tts_tableOid = FUNC3(relation);
	tuple->t_tableOid = slot->tts_tableOid;

	FUNC1(tuple->t_data, specToken);
	options |= HEAP_INSERT_SPECULATIVE;

	/* Perform the insertion, and copy the resulting ItemPointer */
	FUNC4(relation, tuple, cid, options, bistate);
	FUNC2(&tuple->t_self, &slot->tts_tid);

	if (shouldFree)
		FUNC5(tuple);
}