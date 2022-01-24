#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ xl_seq_rec ;
struct TYPE_14__ {int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ sequence_magic ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_17__ {int /*<<< orphan*/  t_ctid; int /*<<< orphan*/  t_infomask; } ;
struct TYPE_16__ {int t_len; TYPE_9__* t_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_4__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstCommandId ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FrozenTransactionId ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_XMAX_INVALID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_NEW ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_SEQ_ID ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  SEQ_MAGIC ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_SEQ_LOG ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC26(Relation rel, HeapTuple tuple)
{
	Buffer		buf;
	Page		page;
	sequence_magic *sm;
	OffsetNumber offnum;

	/* Initialize first page of relation with special magic number */

	buf = FUNC17(rel, P_NEW);
	FUNC0(FUNC1(buf) == 0);

	page = FUNC2(buf);

	FUNC15(page, FUNC3(buf), sizeof(sequence_magic));
	sm = (sequence_magic *) FUNC14(page);
	sm->magic = SEQ_MAGIC;

	/* Now insert sequence tuple */

	FUNC11(buf, BUFFER_LOCK_EXCLUSIVE);

	/*
	 * Since VACUUM does not process sequences, we have to force the tuple to
	 * have xmin = FrozenTransactionId now.  Otherwise it would become
	 * invisible to SELECTs after 2G transactions.  It is okay to do this
	 * because if the current transaction aborts, no other xact will ever
	 * examine the sequence tuple anyway.
	 */
	FUNC8(tuple->t_data, FrozenTransactionId);
	FUNC9(tuple->t_data);
	FUNC6(tuple->t_data, FirstCommandId);
	FUNC7(tuple->t_data, InvalidTransactionId);
	tuple->t_data->t_infomask |= HEAP_XMAX_INVALID;
	FUNC10(&tuple->t_data->t_ctid, 0, FirstOffsetNumber);

	/* check the comment above nextval_internal()'s equivalent call. */
	if (FUNC18(rel))
		FUNC5();

	FUNC19();

	FUNC12(buf);

	offnum = FUNC13(page, (Item) tuple->t_data, tuple->t_len,
						 InvalidOffsetNumber, false, false);
	if (offnum != FirstOffsetNumber)
		FUNC25(ERROR, "failed to add sequence tuple to page");

	/* XLOG stuff */
	if (FUNC18(rel))
	{
		xl_seq_rec	xlrec;
		XLogRecPtr	recptr;

		FUNC21();
		FUNC23(0, buf, REGBUF_WILL_INIT);

		xlrec.node = rel->rd_node;

		FUNC24((char *) &xlrec, sizeof(xl_seq_rec));
		FUNC24((char *) tuple->t_data, tuple->t_len);

		recptr = FUNC22(RM_SEQ_ID, XLOG_SEQ_LOG);

		FUNC16(page, recptr);
	}

	FUNC4();

	FUNC20(buf);
}