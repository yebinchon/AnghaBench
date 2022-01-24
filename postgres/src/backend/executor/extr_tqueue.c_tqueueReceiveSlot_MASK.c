#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ shm_mq_result ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_6__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ TQueueDestReceiver ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ SHM_MQ_DETACHED ; 
 scalar_t__ SHM_MQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6(TupleTableSlot *slot, DestReceiver *self)
{
	TQueueDestReceiver *tqueue = (TQueueDestReceiver *) self;
	HeapTuple	tuple;
	shm_mq_result result;
	bool		should_free;

	/* Send the tuple itself. */
	tuple = FUNC0(slot, true, &should_free);
	result = FUNC5(tqueue->queue, tuple->t_len, tuple->t_data, false);

	if (should_free)
		FUNC4(tuple);

	/* Check for failure. */
	if (result == SHM_MQ_DETACHED)
		return false;
	else if (result != SHM_MQ_SUCCESS)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC3("could not send tuple to shared-memory queue")));

	return true;
}