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
struct TYPE_9__ {int /*<<< orphan*/  tts_tableOid; int /*<<< orphan*/ * tts_tupleDescriptor; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_10__ {int /*<<< orphan*/  t_tableOid; } ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

TupleTableSlot *
FUNC6(HeapTuple tuple,
						 TupleTableSlot *slot,
						 Buffer buffer)
{
	/*
	 * sanity checks
	 */
	FUNC0(tuple != NULL);
	FUNC0(slot != NULL);
	FUNC0(slot->tts_tupleDescriptor != NULL);
	FUNC0(FUNC1(buffer));

	if (FUNC5(!FUNC2(slot)))
		FUNC3(ERROR, "trying to store an on-disk heap tuple into wrong type of slot");
	FUNC4(slot, tuple, buffer, false);

	slot->tts_tableOid = tuple->t_tableOid;

	return slot;
}