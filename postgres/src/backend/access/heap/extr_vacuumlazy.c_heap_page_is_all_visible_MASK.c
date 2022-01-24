#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {scalar_t__ t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
#define  HEAPTUPLE_DEAD 132 
#define  HEAPTUPLE_DELETE_IN_PROGRESS 131 
#define  HEAPTUPLE_INSERT_IN_PROGRESS 130 
#define  HEAPTUPLE_LIVE 129 
#define  HEAPTUPLE_RECENTLY_DEAD 128 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  OldestXmin ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC21(Relation rel, Buffer buf,
						 TransactionId *visibility_cutoff_xid,
						 bool *all_frozen)
{
	Page		page = FUNC2(buf);
	BlockNumber blockno = FUNC1(buf);
	OffsetNumber offnum,
				maxoff;
	bool		all_visible = true;

	*visibility_cutoff_xid = InvalidTransactionId;
	*all_frozen = true;

	/*
	 * This is a stripped down version of the line pointer scan in
	 * lazy_scan_heap(). So if you change anything here, also check that code.
	 */
	maxoff = FUNC15(page);
	for (offnum = FirstOffsetNumber;
		 offnum <= maxoff && all_visible;
		 offnum = FUNC12(offnum))
	{
		ItemId		itemid;
		HeapTupleData tuple;

		itemid = FUNC14(page, offnum);

		/* Unused or redirect line pointers are of no interest */
		if (!FUNC10(itemid) || FUNC9(itemid))
			continue;

		FUNC11(&(tuple.t_self), blockno, offnum);

		/*
		 * Dead line pointers can have index pointers pointing to them. So
		 * they can't be treated as visible
		 */
		if (FUNC7(itemid))
		{
			all_visible = false;
			*all_frozen = false;
			break;
		}

		FUNC0(FUNC8(itemid));

		tuple.t_data = (HeapTupleHeader) FUNC13(page, itemid);
		tuple.t_len = FUNC6(itemid);
		tuple.t_tableOid = FUNC16(rel);

		switch (FUNC5(&tuple, OldestXmin, buf))
		{
			case HEAPTUPLE_LIVE:
				{
					TransactionId xmin;

					/* Check comments in lazy_scan_heap. */
					if (!FUNC4(tuple.t_data))
					{
						all_visible = false;
						*all_frozen = false;
						break;
					}

					/*
					 * The inserter definitely committed. But is it old enough
					 * that everyone sees it as committed?
					 */
					xmin = FUNC3(tuple.t_data);
					if (!FUNC18(xmin, OldestXmin))
					{
						all_visible = false;
						*all_frozen = false;
						break;
					}

					/* Track newest xmin on page. */
					if (FUNC17(xmin, *visibility_cutoff_xid))
						*visibility_cutoff_xid = xmin;

					/* Check whether this tuple is already frozen or not */
					if (all_visible && *all_frozen &&
						FUNC20(tuple.t_data))
						*all_frozen = false;
				}
				break;

			case HEAPTUPLE_DEAD:
			case HEAPTUPLE_RECENTLY_DEAD:
			case HEAPTUPLE_INSERT_IN_PROGRESS:
			case HEAPTUPLE_DELETE_IN_PROGRESS:
				{
					all_visible = false;
					*all_frozen = false;
					break;
				}
			default:
				FUNC19(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
				break;
		}
	}							/* scan along page */

	return all_visible;
}