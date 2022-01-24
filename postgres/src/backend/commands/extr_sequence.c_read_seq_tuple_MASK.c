#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ magic; } ;
typedef  TYPE_1__ sequence_magic ;
struct TYPE_10__ {TYPE_2__* t_data; int /*<<< orphan*/  t_len; } ;
struct TYPE_9__ {int t_infomask; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__* HeapTuple ;
typedef  scalar_t__ Form_pg_sequence_data ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 int HEAP_XMAX_IS_MULTI ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ SEQ_MAGIC ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static Form_pg_sequence_data
FUNC15(Relation rel, Buffer *buf, HeapTuple seqdatatuple)
{
	Page		page;
	ItemId		lp;
	sequence_magic *sm;
	Form_pg_sequence_data seq;

	*buf = FUNC12(rel, 0);
	FUNC7(*buf, BUFFER_LOCK_EXCLUSIVE);

	page = FUNC1(*buf);
	sm = (sequence_magic *) FUNC11(page);

	if (sm->magic != SEQ_MAGIC)
		FUNC14(ERROR, "bad magic number in sequence \"%s\": %08X",
			 FUNC13(rel), sm->magic);

	lp = FUNC10(page, FirstOffsetNumber);
	FUNC0(FUNC6(lp));

	/* Note we currently only bother to set these two fields of *seqdatatuple */
	seqdatatuple->t_data = (HeapTupleHeader) FUNC9(page, lp);
	seqdatatuple->t_len = FUNC5(lp);

	/*
	 * Previous releases of Postgres neglected to prevent SELECT FOR UPDATE on
	 * a sequence, which would leave a non-frozen XID in the sequence tuple's
	 * xmax, which eventually leads to clog access failures or worse. If we
	 * see this has happened, clean up after it.  We treat this like a hint
	 * bit update, ie, don't bother to WAL-log it, since we can certainly do
	 * this again if the update gets lost.
	 */
	FUNC0(!(seqdatatuple->t_data->t_infomask & HEAP_XMAX_IS_MULTI));
	if (FUNC3(seqdatatuple->t_data) != InvalidTransactionId)
	{
		FUNC4(seqdatatuple->t_data, InvalidTransactionId);
		seqdatatuple->t_data->t_infomask &= ~HEAP_XMAX_COMMITTED;
		seqdatatuple->t_data->t_infomask |= HEAP_XMAX_INVALID;
		FUNC8(*buf, true);
	}

	seq = (Form_pg_sequence_data) FUNC2(seqdatatuple);

	return seq;
}