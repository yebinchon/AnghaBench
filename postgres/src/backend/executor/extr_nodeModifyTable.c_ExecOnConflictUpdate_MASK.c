#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_24__ {int /*<<< orphan*/  state; TYPE_5__* ps_ExprContext; } ;
struct TYPE_23__ {int /*<<< orphan*/  es_output_cid; int /*<<< orphan*/  es_snapshot; } ;
struct TYPE_22__ {int /*<<< orphan*/ * ecxt_outertuple; int /*<<< orphan*/ * ecxt_innertuple; int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_21__ {TYPE_8__ ps; int /*<<< orphan*/  mt_epqstate; } ;
struct TYPE_20__ {scalar_t__ ri_WithCheckOptions; TYPE_1__* ri_onConflict; int /*<<< orphan*/  ri_RelationDesc; } ;
struct TYPE_19__ {int /*<<< orphan*/  ctid; } ;
struct TYPE_18__ {int /*<<< orphan*/  oc_ProjSlot; int /*<<< orphan*/  oc_ProjInfo; int /*<<< orphan*/ * oc_Existing; int /*<<< orphan*/ * oc_WhereClause; } ;
typedef  int TM_Result ;
typedef  TYPE_2__ TM_FailureData ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_4__ ModifyTableState ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_5__ ExprContext ;
typedef  TYPE_6__ EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_CARDINALITY_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LockWaitBlock ; 
 int /*<<< orphan*/  MinTransactionIdAttributeNumber ; 
 scalar_t__ NIL ; 
#define  TM_Deleted 132 
#define  TM_Invisible 131 
#define  TM_Ok 130 
#define  TM_SelfModified 129 
#define  TM_Updated 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WCO_RLS_CONFLICT_CHECK ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC20(ModifyTableState *mtstate,
					 ResultRelInfo *resultRelInfo,
					 ItemPointer conflictTid,
					 TupleTableSlot *planSlot,
					 TupleTableSlot *excludedSlot,
					 EState *estate,
					 bool canSetTag,
					 TupleTableSlot **returning)
{
	ExprContext *econtext = mtstate->ps.ps_ExprContext;
	Relation	relation = resultRelInfo->ri_RelationDesc;
	ExprState  *onConflictSetWhere = resultRelInfo->ri_onConflict->oc_WhereClause;
	TupleTableSlot *existing = resultRelInfo->ri_onConflict->oc_Existing;
	TM_FailureData tmfd;
	LockTupleMode lockmode;
	TM_Result	test;
	Datum		xminDatum;
	TransactionId xmin;
	bool		isnull;

	/* Determine lock mode to use */
	lockmode = FUNC7(estate, resultRelInfo);

	/*
	 * Lock tuple for update.  Don't follow updates when tuple cannot be
	 * locked without doing so.  A row locking conflict here means our
	 * previous conclusion that the tuple is conclusively committed is not
	 * true anymore.
	 */
	test = FUNC19(relation, conflictTid,
							estate->es_snapshot,
							existing, estate->es_output_cid,
							lockmode, LockWaitBlock, 0,
							&tmfd);
	switch (test)
	{
		case TM_Ok:
			/* success! */
			break;

		case TM_Invisible:

			/*
			 * This can occur when a just inserted tuple is updated again in
			 * the same command. E.g. because multiple rows with the same
			 * conflicting key values are inserted.
			 *
			 * This is somewhat similar to the ExecUpdate() TM_SelfModified
			 * case.  We do not want to proceed because it would lead to the
			 * same row being updated a second time in some unspecified order,
			 * and in contrast to plain UPDATEs there's no historical behavior
			 * to break.
			 *
			 * It is the user's responsibility to prevent this situation from
			 * occurring.  These problems are why SQL-2003 similarly specifies
			 * that for SQL MERGE, an exception must be raised in the event of
			 * an attempt to update the same row twice.
			 */
			xminDatum = FUNC18(existing,
										MinTransactionIdAttributeNumber,
										&isnull);
			FUNC0(!isnull);
			xmin = FUNC1(xminDatum);

			if (FUNC12(xmin))
				FUNC14(ERROR,
						(FUNC15(ERRCODE_CARDINALITY_VIOLATION),
						 FUNC17("ON CONFLICT DO UPDATE command cannot affect row a second time"),
						 FUNC16("Ensure that no rows proposed for insertion within the same command have duplicate constrained values.")));

			/* This shouldn't happen */
			FUNC13(ERROR, "attempted to lock invisible tuple");
			break;

		case TM_SelfModified:

			/*
			 * This state should never be reached. As a dirty snapshot is used
			 * to find conflicting tuples, speculative insertion wouldn't have
			 * seen this row to conflict with.
			 */
			FUNC13(ERROR, "unexpected self-updated tuple");
			break;

		case TM_Updated:
			if (FUNC10())
				FUNC14(ERROR,
						(FUNC15(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC17("could not serialize access due to concurrent update")));

			/*
			 * As long as we don't support an UPDATE of INSERT ON CONFLICT for
			 * a partitioned table we shouldn't reach to a case where tuple to
			 * be lock is moved to another partition due to concurrent update
			 * of the partition key.
			 */
			FUNC0(!FUNC11(&tmfd.ctid));

			/*
			 * Tell caller to try again from the very start.
			 *
			 * It does not make sense to use the usual EvalPlanQual() style
			 * loop here, as the new version of the row might not conflict
			 * anymore, or the conflicting tuple has actually been deleted.
			 */
			FUNC3(existing);
			return false;

		case TM_Deleted:
			if (FUNC10())
				FUNC14(ERROR,
						(FUNC15(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC17("could not serialize access due to concurrent delete")));

			/* see TM_Updated case */
			FUNC0(!FUNC11(&tmfd.ctid));
			FUNC3(existing);
			return false;

		default:
			FUNC13(ERROR, "unrecognized table_tuple_lock status: %u", test);
	}

	/* Success, the tuple is locked. */

	/*
	 * Verify that the tuple is visible to our MVCC snapshot if the current
	 * isolation level mandates that.
	 *
	 * It's not sufficient to rely on the check within ExecUpdate() as e.g.
	 * CONFLICT ... WHERE clause may prevent us from reaching that.
	 *
	 * This means we only ever continue when a new command in the current
	 * transaction could see the row, even though in READ COMMITTED mode the
	 * tuple will not be visible according to the current statement's
	 * snapshot.  This is in line with the way UPDATE deals with newer tuple
	 * versions.
	 */
	FUNC2(estate, relation, existing);

	/*
	 * Make tuple and any needed join variables available to ExecQual and
	 * ExecProject.  The EXCLUDED tuple is installed in ecxt_innertuple, while
	 * the target's existing tuple is installed in the scantuple.  EXCLUDED
	 * has been made to reference INNER_VAR in setrefs.c, but there is no
	 * other redirection.
	 */
	econtext->ecxt_scantuple = existing;
	econtext->ecxt_innertuple = excludedSlot;
	econtext->ecxt_outertuple = NULL;

	if (!FUNC5(onConflictSetWhere, econtext))
	{
		FUNC3(existing);	/* see return below */
		FUNC9(&mtstate->ps, 1);
		return true;			/* done with the tuple */
	}

	if (resultRelInfo->ri_WithCheckOptions != NIL)
	{
		/*
		 * Check target's existing tuple against UPDATE-applicable USING
		 * security barrier quals (if any), enforced here as RLS checks/WCOs.
		 *
		 * The rewriter creates UPDATE RLS checks/WCOs for UPDATE security
		 * quals, and stores them as WCOs of "kind" WCO_RLS_CONFLICT_CHECK,
		 * but that's almost the extent of its special handling for ON
		 * CONFLICT DO UPDATE.
		 *
		 * The rewriter will also have associated UPDATE applicable straight
		 * RLS checks/WCOs for the benefit of the ExecUpdate() call that
		 * follows.  INSERTs and UPDATEs naturally have mutually exclusive WCO
		 * kinds, so there is no danger of spurious over-enforcement in the
		 * INSERT or UPDATE path.
		 */
		FUNC8(WCO_RLS_CONFLICT_CHECK, resultRelInfo,
							 existing,
							 mtstate->ps.state);
	}

	/* Project the new tuple version */
	FUNC4(resultRelInfo->ri_onConflict->oc_ProjInfo);

	/*
	 * Note that it is possible that the target tuple has been modified in
	 * this session, after the above table_tuple_lock. We choose to not error
	 * out in that case, in line with ExecUpdate's treatment of similar cases.
	 * This can happen if an UPDATE is triggered from within ExecQual(),
	 * ExecWithCheckOptions() or ExecProject() above, e.g. by selecting from a
	 * wCTE in the ON CONFLICT's SET.
	 */

	/* Execute UPDATE with projection */
	*returning = FUNC6(mtstate, conflictTid, NULL,
							resultRelInfo->ri_onConflict->oc_ProjSlot,
							planSlot,
							&mtstate->mt_epqstate, mtstate->ps.state,
							canSetTag);

	/*
	 * Clear out existing tuple, as there might not be another conflict among
	 * the next input rows. Don't want to hold resources till the end of the
	 * query.
	 */
	FUNC3(existing);
	return true;
}