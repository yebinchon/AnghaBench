#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  XLTW_Oper ;
struct TYPE_31__ {int /*<<< orphan*/  tts_tid; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_36__ {TYPE_1__* ecxt_scantuple; } ;
struct TYPE_35__ {scalar_t__ ii_ExclusionOps; int /*<<< orphan*/ * ii_UniqueStrats; int /*<<< orphan*/ * ii_UniqueProcs; int /*<<< orphan*/ * ii_ExclusionStrats; int /*<<< orphan*/ * ii_ExclusionProcs; } ;
struct TYPE_34__ {scalar_t__ xs_recheck; } ;
struct TYPE_33__ {int /*<<< orphan*/ * rd_indcollation; } ;
struct TYPE_32__ {scalar_t__ speculativeToken; int /*<<< orphan*/  xmin; int /*<<< orphan*/  xmax; } ;
typedef  TYPE_2__ SnapshotData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_4__* IndexScanDesc ;
typedef  TYPE_5__ IndexInfo ;
typedef  TYPE_6__ ExprContext ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ CEOUC_WAIT_MODE ;

/* Variables and functions */
 char* FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ CEOUC_LIVELOCK_PREVENTING_WAIT ; 
 scalar_t__ CEOUC_WAIT ; 
 int /*<<< orphan*/  ERRCODE_EXCLUSION_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ *) ; 
 int INDEX_MAX_KEYS ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLTW_InsertIndex ; 
 int /*<<< orphan*/  XLTW_RecheckExclusionConstr ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC21 (TYPE_3__*,TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 scalar_t__ FUNC23 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC26 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC27(Relation heap, Relation index,
									 IndexInfo *indexInfo,
									 ItemPointer tupleid,
									 Datum *values, bool *isnull,
									 EState *estate, bool newIndex,
									 CEOUC_WAIT_MODE waitMode,
									 bool violationOK,
									 ItemPointer conflictTid)
{
	Oid		   *constr_procs;
	uint16	   *constr_strats;
	Oid		   *index_collations = index->rd_indcollation;
	int			indnkeyatts = FUNC5(index);
	IndexScanDesc index_scan;
	ScanKeyData scankeys[INDEX_MAX_KEYS];
	SnapshotData DirtySnapshot;
	int			i;
	bool		conflict;
	bool		found_self;
	ExprContext *econtext;
	TupleTableSlot *existing_slot;
	TupleTableSlot *save_scantuple;

	if (indexInfo->ii_ExclusionOps)
	{
		constr_procs = indexInfo->ii_ExclusionProcs;
		constr_strats = indexInfo->ii_ExclusionStrats;
	}
	else
	{
		constr_procs = indexInfo->ii_UniqueProcs;
		constr_strats = indexInfo->ii_UniqueStrats;
	}

	/*
	 * If any of the input values are NULL, the constraint check is assumed to
	 * pass (i.e., we assume the operators are strict).
	 */
	for (i = 0; i < indnkeyatts; i++)
	{
		if (isnull[i])
			return true;
	}

	/*
	 * Search the tuples that are in the index for any violations, including
	 * tuples that aren't visible yet.
	 */
	FUNC6(DirtySnapshot);

	for (i = 0; i < indnkeyatts; i++)
	{
		FUNC10(&scankeys[i],
							   0,
							   i + 1,
							   constr_strats[i],
							   InvalidOid,
							   index_collations[i],
							   constr_procs[i],
							   values[i]);
	}

	/*
	 * Need a TupleTableSlot to put existing tuples in.
	 *
	 * To use FormIndexDatum, we have to make the econtext's scantuple point
	 * to this slot.  Be sure to save and restore caller's value for
	 * scantuple.
	 */
	existing_slot = FUNC26(heap, NULL);

	econtext = FUNC4(estate);
	save_scantuple = econtext->ecxt_scantuple;
	econtext->ecxt_scantuple = existing_slot;

	/*
	 * May have to restart scan from this point if a potential conflict is
	 * found.
	 */
retry:
	conflict = false;
	found_self = false;
	index_scan = FUNC21(heap, index, &DirtySnapshot, indnkeyatts, 0);
	FUNC25(index_scan, scankeys, indnkeyatts, NULL, 0);

	while (FUNC23(index_scan, ForwardScanDirection, existing_slot))
	{
		TransactionId xwait;
		XLTW_Oper	reason_wait;
		Datum		existing_values[INDEX_MAX_KEYS];
		bool		existing_isnull[INDEX_MAX_KEYS];
		char	   *error_new;
		char	   *error_existing;

		/*
		 * Ignore the entry for the tuple we're trying to check.
		 */
		if (FUNC8(tupleid) &&
			FUNC7(tupleid, &existing_slot->tts_tid))
		{
			if (found_self)		/* should not happen */
				FUNC15(ERROR, "found self tuple multiple times in index \"%s\"",
					 FUNC9(index));
			found_self = true;
			continue;
		}

		/*
		 * Extract the index column values and isnull flags from the existing
		 * tuple.
		 */
		FUNC2(indexInfo, existing_slot, estate,
					   existing_values, existing_isnull);

		/* If lossy indexscan, must recheck the condition */
		if (index_scan->xs_recheck)
		{
			if (!FUNC24(index,
										  constr_procs,
										  existing_values,
										  existing_isnull,
										  values))
				continue;		/* tuple doesn't actually match, so no
								 * conflict */
		}

		/*
		 * At this point we have either a conflict or a potential conflict.
		 *
		 * If an in-progress transaction is affecting the visibility of this
		 * tuple, we need to wait for it to complete and then recheck (unless
		 * the caller requested not to).  For simplicity we do rechecking by
		 * just restarting the whole scan --- this case probably doesn't
		 * happen often enough to be worth trying harder, and anyway we don't
		 * want to hold any index internal locks while waiting.
		 */
		xwait = FUNC12(DirtySnapshot.xmin) ?
			DirtySnapshot.xmin : DirtySnapshot.xmax;

		if (FUNC12(xwait) &&
			(waitMode == CEOUC_WAIT ||
			 (waitMode == CEOUC_LIVELOCK_PREVENTING_WAIT &&
			  DirtySnapshot.speculativeToken &&
			  FUNC13(FUNC3(), xwait))))
		{
			reason_wait = indexInfo->ii_ExclusionOps ?
				XLTW_RecheckExclusionConstr : XLTW_InsertIndex;
			FUNC22(index_scan);
			if (DirtySnapshot.speculativeToken)
				FUNC11(DirtySnapshot.xmin,
										 DirtySnapshot.speculativeToken);
			else
				FUNC14(xwait, heap,
								  &existing_slot->tts_tid, reason_wait);
			goto retry;
		}

		/*
		 * We have a definite conflict (or a potential one, but the caller
		 * didn't want to wait).  Return it to caller, or report it.
		 */
		if (violationOK)
		{
			conflict = true;
			if (conflictTid)
				*conflictTid = existing_slot->tts_tid;
			break;
		}

		error_new = FUNC0(index, values, isnull);
		error_existing = FUNC0(index, existing_values,
													existing_isnull);
		if (newIndex)
			FUNC16(ERROR,
					(FUNC17(ERRCODE_EXCLUSION_VIOLATION),
					 FUNC19("could not create exclusion constraint \"%s\"",
							FUNC9(index)),
					 error_new && error_existing ?
					 FUNC18("Key %s conflicts with key %s.",
							   error_new, error_existing) :
					 FUNC18("Key conflicts exist."),
					 FUNC20(heap,
										FUNC9(index))));
		else
			FUNC16(ERROR,
					(FUNC17(ERRCODE_EXCLUSION_VIOLATION),
					 FUNC19("conflicting key value violates exclusion constraint \"%s\"",
							FUNC9(index)),
					 error_new && error_existing ?
					 FUNC18("Key %s conflicts with existing key %s.",
							   error_new, error_existing) :
					 FUNC18("Key conflicts with existing key."),
					 FUNC20(heap,
										FUNC9(index))));
	}

	FUNC22(index_scan);

	/*
	 * Ordinarily, at this point the search should have found the originally
	 * inserted tuple (if any), unless we exited the loop early because of
	 * conflict.  However, it is possible to define exclusion constraints for
	 * which that wouldn't be true --- for instance, if the operator is <>. So
	 * we no longer complain if found_self is still false.
	 */

	econtext->ecxt_scantuple = save_scantuple;

	FUNC1(existing_slot);

	return !conflict;
}