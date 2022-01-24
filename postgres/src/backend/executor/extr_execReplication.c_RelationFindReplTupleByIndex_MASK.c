#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tts_tid; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_15__ {int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
struct TYPE_14__ {int /*<<< orphan*/  ctid; } ;
typedef  int TM_Result ;
typedef  TYPE_2__ TM_FailureData ;
typedef  TYPE_3__ SnapshotData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  IndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  LockWaitBlock ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
#define  TM_Deleted 131 
#define  TM_Invisible 130 
#define  TM_Ok 129 
#define  TM_Updated 128 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLTW_None ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

bool
FUNC22(Relation rel, Oid idxoid,
							 LockTupleMode lockmode,
							 TupleTableSlot *searchslot,
							 TupleTableSlot *outslot)
{
	ScanKeyData skey[INDEX_MAX_KEYS];
	IndexScanDesc scan;
	SnapshotData snap;
	TransactionId xwait;
	Relation	idxrel;
	bool		found;

	/* Open the index. */
	idxrel = FUNC19(idxoid, RowExclusiveLock);

	/* Start an index scan. */
	FUNC4(snap);
	scan = FUNC15(rel, idxrel, &snap,
						   FUNC3(idxrel),
						   0);

	/* Build scan key. */
	FUNC10(skey, rel, idxrel, searchslot);

retry:
	found = false;

	FUNC20(scan, skey, FUNC3(idxrel), NULL, 0);

	/* Try to find the tuple */
	if (FUNC18(scan, ForwardScanDirection, outslot))
	{
		found = true;
		FUNC0(outslot);

		xwait = FUNC8(snap.xmin) ?
			snap.xmin : snap.xmax;

		/*
		 * If the tuple is locked, wait for locking transaction to finish and
		 * retry.
		 */
		if (FUNC8(xwait))
		{
			FUNC9(xwait, NULL, NULL, XLTW_None);
			goto retry;
		}
	}

	/* Found tuple, try to lock it in the lockmode. */
	if (found)
	{
		TM_FailureData tmfd;
		TM_Result	res;

		FUNC7(FUNC2());

		res = FUNC21(rel, &(outslot->tts_tid), FUNC2(),
							   outslot,
							   FUNC1(false),
							   lockmode,
							   LockWaitBlock,
							   0 /* don't follow updates */ ,
							   &tmfd);

		FUNC6();

		switch (res)
		{
			case TM_Ok:
				break;
			case TM_Updated:
				/* XXX: Improve handling here */
				if (FUNC5(&tmfd.ctid))
					FUNC12(LOG,
							(FUNC13(ERRCODE_T_R_SERIALIZATION_FAILURE),
							 FUNC14("tuple to be locked was already moved to another partition due to concurrent update, retrying")));
				else
					FUNC12(LOG,
							(FUNC13(ERRCODE_T_R_SERIALIZATION_FAILURE),
							 FUNC14("concurrent update, retrying")));
				goto retry;
			case TM_Deleted:
				/* XXX: Improve handling here */
				FUNC12(LOG,
						(FUNC13(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC14("concurrent delete, retrying")));
				goto retry;
			case TM_Invisible:
				FUNC11(ERROR, "attempted to lock invisible tuple");
				break;
			default:
				FUNC11(ERROR, "unexpected table_tuple_lock status: %u", res);
				break;
		}
	}

	FUNC17(scan);

	/* Don't release lock until commit. */
	FUNC16(idxrel, NoLock);

	return found;
}