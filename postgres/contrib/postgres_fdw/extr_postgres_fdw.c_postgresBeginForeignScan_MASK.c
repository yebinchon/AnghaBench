#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UserMapping ;
struct TYPE_17__ {int scanrelid; } ;
struct TYPE_24__ {int /*<<< orphan*/  fdw_exprs; TYPE_2__ scan; int /*<<< orphan*/  fdw_private; int /*<<< orphan*/  fs_relids; } ;
struct TYPE_16__ {TYPE_10__* state; scalar_t__ plan; } ;
struct TYPE_19__ {TYPE_3__* ss_ScanTupleSlot; int /*<<< orphan*/ * ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_23__ {TYPE_4__ ss; void* fdw_state; } ;
struct TYPE_22__ {int /*<<< orphan*/  serverid; } ;
struct TYPE_21__ {int cursor_exists; int numParams; int /*<<< orphan*/  param_values; int /*<<< orphan*/  param_exprs; int /*<<< orphan*/  param_flinfo; int /*<<< orphan*/  tupdesc; int /*<<< orphan*/  attinmeta; int /*<<< orphan*/ * rel; void* temp_cxt; void* batch_cxt; int /*<<< orphan*/  fetch_size; int /*<<< orphan*/ * retrieved_attrs; int /*<<< orphan*/  query; int /*<<< orphan*/  conn; int /*<<< orphan*/  cursor_number; } ;
struct TYPE_20__ {int /*<<< orphan*/  relid; scalar_t__ checkAsUser; } ;
struct TYPE_18__ {int /*<<< orphan*/  tts_tupleDescriptor; } ;
struct TYPE_15__ {int /*<<< orphan*/  es_query_cxt; } ;
typedef  TYPE_5__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_6__ PgFdwScanState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_7__ ForeignTable ;
typedef  TYPE_8__ ForeignScanState ;
typedef  TYPE_9__ ForeignScan ;
typedef  TYPE_10__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/  FdwScanPrivateFetchSize ; 
 int /*<<< orphan*/  FdwScanPrivateRetrievedAttrs ; 
 int /*<<< orphan*/  FdwScanPrivateSelectSql ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC9 (int,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static void
FUNC16(ForeignScanState *node, int eflags)
{
	ForeignScan *fsplan = (ForeignScan *) node->ss.ps.plan;
	EState	   *estate = node->ss.ps.state;
	PgFdwScanState *fsstate;
	RangeTblEntry *rte;
	Oid			userid;
	ForeignTable *table;
	UserMapping *user;
	int			rtindex;
	int			numParams;

	/*
	 * Do nothing in EXPLAIN (no ANALYZE) case.  node->fdw_state stays NULL.
	 */
	if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
		return;

	/*
	 * We'll save private state in node->fdw_state.
	 */
	fsstate = (PgFdwScanState *) FUNC13(sizeof(PgFdwScanState));
	node->fdw_state = (void *) fsstate;

	/*
	 * Identify which user to do the remote access as.  This should match what
	 * ExecCheckRTEPerms() does.  In case of a join or aggregate, use the
	 * lowest-numbered member RTE as a representative; we would get the same
	 * result from any.
	 */
	if (fsplan->scan.scanrelid > 0)
		rtindex = fsplan->scan.scanrelid;
	else
		rtindex = FUNC8(fsplan->fs_relids, -1);
	rte = FUNC9(rtindex, estate);
	userid = rte->checkAsUser ? rte->checkAsUser : FUNC4();

	/* Get info about foreign table. */
	table = FUNC3(rte->relid);
	user = FUNC5(userid, table->serverid);

	/*
	 * Get connection to the foreign server.  Connection manager will
	 * establish new connection if necessary.
	 */
	fsstate->conn = FUNC1(user, false);

	/* Assign a unique ID for my cursor */
	fsstate->cursor_number = FUNC2(fsstate->conn);
	fsstate->cursor_exists = false;

	/* Get private info created by planner functions. */
	fsstate->query = FUNC15(FUNC12(fsplan->fdw_private,
									 FdwScanPrivateSelectSql));
	fsstate->retrieved_attrs = (List *) FUNC12(fsplan->fdw_private,
												 FdwScanPrivateRetrievedAttrs);
	fsstate->fetch_size = FUNC10(FUNC12(fsplan->fdw_private,
										  FdwScanPrivateFetchSize));

	/* Create contexts for batches of tuples and per-tuple temp workspace. */
	fsstate->batch_cxt = FUNC0(estate->es_query_cxt,
											   "postgres_fdw tuple data",
											   ALLOCSET_DEFAULT_SIZES);
	fsstate->temp_cxt = FUNC0(estate->es_query_cxt,
											  "postgres_fdw temporary data",
											  ALLOCSET_SMALL_SIZES);

	/*
	 * Get info we'll need for converting data fetched from the foreign server
	 * into local representation and error reporting during that process.
	 */
	if (fsplan->scan.scanrelid > 0)
	{
		fsstate->rel = node->ss.ss_currentRelation;
		fsstate->tupdesc = FUNC6(fsstate->rel);
	}
	else
	{
		fsstate->rel = NULL;
		fsstate->tupdesc = node->ss.ss_ScanTupleSlot->tts_tupleDescriptor;
	}

	fsstate->attinmeta = FUNC7(fsstate->tupdesc);

	/*
	 * Prepare for processing of parameters used in remote query, if any.
	 */
	numParams = FUNC11(fsplan->fdw_exprs);
	fsstate->numParams = numParams;
	if (numParams > 0)
		FUNC14((PlanState *) node,
							 fsplan->fdw_exprs,
							 numParams,
							 &fsstate->param_flinfo,
							 &fsstate->param_exprs,
							 &fsstate->param_values);
}