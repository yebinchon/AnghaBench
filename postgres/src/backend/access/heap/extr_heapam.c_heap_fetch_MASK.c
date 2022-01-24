#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/ * HeapTupleHeader ;
typedef  TYPE_1__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC16(Relation relation,
		   Snapshot snapshot,
		   HeapTuple tuple,
		   Buffer *userbuf)
{
	ItemPointer tid = &(tuple->t_self);
	ItemId		lp;
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	bool		valid;

	/*
	 * Fetch and pin the appropriate page of the relation.
	 */
	buffer = FUNC12(relation, FUNC5(tid));

	/*
	 * Need share lock on buffer to examine tuple commit status.
	 */
	FUNC7(buffer, BUFFER_LOCK_SHARE);
	page = FUNC0(buffer);
	FUNC15(snapshot, relation, page);

	/*
	 * We'd better check for out-of-range offnum in case of VACUUM since the
	 * TID was obtained.
	 */
	offnum = FUNC6(tid);
	if (offnum < FirstOffsetNumber || offnum > FUNC10(page))
	{
		FUNC7(buffer, BUFFER_LOCK_UNLOCK);
		FUNC14(buffer);
		*userbuf = InvalidBuffer;
		tuple->t_data = NULL;
		return false;
	}

	/*
	 * get the item line pointer corresponding to the requested tid
	 */
	lp = FUNC9(page, offnum);

	/*
	 * Must check for deleted tuple.
	 */
	if (!FUNC4(lp))
	{
		FUNC7(buffer, BUFFER_LOCK_UNLOCK);
		FUNC14(buffer);
		*userbuf = InvalidBuffer;
		tuple->t_data = NULL;
		return false;
	}

	/*
	 * fill in *tuple fields
	 */
	tuple->t_data = (HeapTupleHeader) FUNC8(page, lp);
	tuple->t_len = FUNC3(lp);
	tuple->t_tableOid = FUNC13(relation);

	/*
	 * check tuple visibility, then release lock
	 */
	valid = FUNC2(tuple, snapshot, buffer);

	if (valid)
		FUNC11(relation, tuple, snapshot);

	FUNC1(valid, relation, tuple, buffer, snapshot);

	FUNC7(buffer, BUFFER_LOCK_UNLOCK);

	if (valid)
	{
		/*
		 * All checks passed, so return the tuple as valid. Caller is now
		 * responsible for releasing the buffer.
		 */
		*userbuf = buffer;

		return true;
	}

	/* Tuple failed time qual */
	FUNC14(buffer);
	*userbuf = InvalidBuffer;

	return false;
}