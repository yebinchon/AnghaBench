#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UserMapping ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_20__ {TYPE_11__* state; scalar_t__ plan; } ;
struct TYPE_23__ {TYPE_3__* ss_ScanTupleSlot; int /*<<< orphan*/ * ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_28__ {TYPE_4__ ss; void* fdw_state; } ;
struct TYPE_27__ {int /*<<< orphan*/  serverid; } ;
struct TYPE_26__ {int num_tuples; int numParams; int /*<<< orphan*/  param_values; int /*<<< orphan*/  param_exprs; int /*<<< orphan*/  param_flinfo; int /*<<< orphan*/  attinmeta; int /*<<< orphan*/ * rel; void* has_returning; int /*<<< orphan*/  temp_cxt; void* set_processed; int /*<<< orphan*/ * retrieved_attrs; int /*<<< orphan*/  query; int /*<<< orphan*/ * resultRel; int /*<<< orphan*/  conn; } ;
struct TYPE_25__ {scalar_t__ checkAsUser; } ;
struct TYPE_24__ {scalar_t__ scanrelid; } ;
struct TYPE_22__ {int /*<<< orphan*/  tts_tupleDescriptor; } ;
struct TYPE_21__ {int /*<<< orphan*/  ri_RangeTableIndex; } ;
struct TYPE_19__ {int /*<<< orphan*/  es_query_cxt; TYPE_2__* es_result_relation_info; } ;
struct TYPE_18__ {int /*<<< orphan*/  fdw_exprs; int /*<<< orphan*/  fdw_scan_tlist; TYPE_5__ scan; int /*<<< orphan*/  fdw_private; } ;
typedef  TYPE_6__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_7__ PgFdwDirectModifyState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_8__ ForeignTable ;
typedef  TYPE_9__ ForeignScanState ;
typedef  TYPE_10__ ForeignScan ;
typedef  TYPE_11__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FdwDirectModifyPrivateHasReturning ; 
 int /*<<< orphan*/  FdwDirectModifyPrivateRetrievedAttrs ; 
 int /*<<< orphan*/  FdwDirectModifyPrivateSetProcessed ; 
 int /*<<< orphan*/  FdwDirectModifyPrivateUpdateSql ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC9 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static void
FUNC17(ForeignScanState *node, int eflags)
{
	ForeignScan *fsplan = (ForeignScan *) node->ss.ps.plan;
	EState	   *estate = node->ss.ps.state;
	PgFdwDirectModifyState *dmstate;
	Index		rtindex;
	RangeTblEntry *rte;
	Oid			userid;
	ForeignTable *table;
	UserMapping *user;
	int			numParams;

	/*
	 * Do nothing in EXPLAIN (no ANALYZE) case.  node->fdw_state stays NULL.
	 */
	if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
		return;

	/*
	 * We'll save private state in node->fdw_state.
	 */
	dmstate = (PgFdwDirectModifyState *) FUNC14(sizeof(PgFdwDirectModifyState));
	node->fdw_state = (void *) dmstate;

	/*
	 * Identify which user to do the remote access as.  This should match what
	 * ExecCheckRTEPerms() does.
	 */
	rtindex = estate->es_result_relation_info->ri_RangeTableIndex;
	rte = FUNC9(rtindex, estate);
	userid = rte->checkAsUser ? rte->checkAsUser : FUNC4();

	/* Get info about foreign table. */
	if (fsplan->scan.scanrelid == 0)
		dmstate->rel = FUNC1(estate, rtindex, eflags);
	else
		dmstate->rel = node->ss.ss_currentRelation;
	table = FUNC3(FUNC7(dmstate->rel));
	user = FUNC5(userid, table->serverid);

	/*
	 * Get connection to the foreign server.  Connection manager will
	 * establish new connection if necessary.
	 */
	dmstate->conn = FUNC2(user, false);

	/* Update the foreign-join-related fields. */
	if (fsplan->scan.scanrelid == 0)
	{
		/* Save info about foreign table. */
		dmstate->resultRel = dmstate->rel;

		/*
		 * Set dmstate->rel to NULL to teach get_returning_data() and
		 * make_tuple_from_result_row() that columns fetched from the remote
		 * server are described by fdw_scan_tlist of the foreign-scan plan
		 * node, not the tuple descriptor for the target relation.
		 */
		dmstate->rel = NULL;
	}

	/* Initialize state variable */
	dmstate->num_tuples = -1;	/* -1 means not set yet */

	/* Get private info created by planner functions. */
	dmstate->query = FUNC16(FUNC13(fsplan->fdw_private,
									 FdwDirectModifyPrivateUpdateSql));
	dmstate->has_returning = FUNC11(FUNC13(fsplan->fdw_private,
											 FdwDirectModifyPrivateHasReturning));
	dmstate->retrieved_attrs = (List *) FUNC13(fsplan->fdw_private,
												 FdwDirectModifyPrivateRetrievedAttrs);
	dmstate->set_processed = FUNC11(FUNC13(fsplan->fdw_private,
											 FdwDirectModifyPrivateSetProcessed));

	/* Create context for per-tuple temp workspace. */
	dmstate->temp_cxt = FUNC0(estate->es_query_cxt,
											  "postgres_fdw temporary data",
											  ALLOCSET_SMALL_SIZES);

	/* Prepare for input conversion of RETURNING results. */
	if (dmstate->has_returning)
	{
		TupleDesc	tupdesc;

		if (fsplan->scan.scanrelid == 0)
			tupdesc = node->ss.ss_ScanTupleSlot->tts_tupleDescriptor;
		else
			tupdesc = FUNC6(dmstate->rel);

		dmstate->attinmeta = FUNC8(tupdesc);

		/*
		 * When performing an UPDATE/DELETE .. RETURNING on a join directly,
		 * initialize a filter to extract an updated/deleted tuple from a scan
		 * tuple.
		 */
		if (fsplan->scan.scanrelid == 0)
			FUNC10(dmstate, fsplan->fdw_scan_tlist, rtindex);
	}

	/*
	 * Prepare for processing of parameters used in remote query, if any.
	 */
	numParams = FUNC12(fsplan->fdw_exprs);
	dmstate->numParams = numParams;
	if (numParams > 0)
		FUNC15((PlanState *) node,
							 fsplan->fdw_exprs,
							 numParams,
							 &dmstate->param_flinfo,
							 &dmstate->param_exprs,
							 &dmstate->param_values);
}