#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_18__ {scalar_t__ tups_inserted; scalar_t__ itups; scalar_t__ htups; int /*<<< orphan*/  tuplesort; } ;
typedef  TYPE_2__ ValidateIndexState ;
struct TYPE_21__ {int ii_Concurrent; } ;
struct TYPE_20__ {int analyze_only; int report_progress; int estimated_count; int /*<<< orphan*/ * strategy; int /*<<< orphan*/  num_heap_tuples; int /*<<< orphan*/  message_level; TYPE_3__* index; } ;
struct TYPE_19__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {int /*<<< orphan*/  reltuples; int /*<<< orphan*/  relowner; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ IndexVacuumInfo ;
typedef  TYPE_5__ IndexInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_5__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  Int8LessOperator ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  NoLock ; 
 int const PROGRESS_CREATEIDX_PHASE ; 
 int /*<<< orphan*/  const PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN ; 
 int /*<<< orphan*/  const PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT ; 
 int /*<<< orphan*/  PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN ; 
 int const PROGRESS_CREATEIDX_TUPLES_DONE ; 
 int const PROGRESS_CREATEIDX_TUPLES_TOTAL ; 
 int const PROGRESS_SCAN_BLOCKS_DONE ; 
 int const PROGRESS_SCAN_BLOCKS_TOTAL ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int SECURITY_RESTRICTED_OPERATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maintenance_work_mem ; 
 int /*<<< orphan*/  FUNC9 (int,int const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  validate_index_callback ; 

void
FUNC17(Oid heapId, Oid indexId, Snapshot snapshot)
{
	Relation	heapRelation,
				indexRelation;
	IndexInfo  *indexInfo;
	IndexVacuumInfo ivinfo;
	ValidateIndexState state;
	Oid			save_userid;
	int			save_sec_context;
	int			save_nestlevel;

	{
		const int	index[] = {
			PROGRESS_CREATEIDX_PHASE,
			PROGRESS_CREATEIDX_TUPLES_DONE,
			PROGRESS_CREATEIDX_TUPLES_TOTAL,
			PROGRESS_SCAN_BLOCKS_DONE,
			PROGRESS_SCAN_BLOCKS_TOTAL
		};
		const int64 val[] = {
			PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN,
			0, 0, 0, 0
		};

		FUNC9(5, index, val);
	}

	/* Open and lock the parent heap relation */
	heapRelation = FUNC13(heapId, ShareUpdateExclusiveLock);
	/* And the target index relation */
	indexRelation = FUNC8(indexId, RowExclusiveLock);

	/*
	 * Fetch info needed for index_insert.  (You might think this should be
	 * passed in from DefineIndex, but its copy is long gone due to having
	 * been built in a previous transaction.)
	 */
	indexInfo = FUNC1(indexRelation);

	/* mark build is concurrent just for consistency */
	indexInfo->ii_Concurrent = true;

	/*
	 * Switch to the table owner's userid, so that any index functions are run
	 * as that user.  Also lock down security-restricted operations and
	 * arrange to make GUC variable changes local to this command.
	 */
	FUNC2(&save_userid, &save_sec_context);
	FUNC4(heapRelation->rd_rel->relowner,
						   save_sec_context | SECURITY_RESTRICTED_OPERATION);
	save_nestlevel = FUNC3();

	/*
	 * Scan the index and gather up all the TIDs into a tuplesort object.
	 */
	ivinfo.index = indexRelation;
	ivinfo.analyze_only = false;
	ivinfo.report_progress = true;
	ivinfo.estimated_count = true;
	ivinfo.message_level = DEBUG2;
	ivinfo.num_heap_tuples = heapRelation->rd_rel->reltuples;
	ivinfo.strategy = NULL;

	/*
	 * Encode TIDs as int8 values for the sort, rather than directly sorting
	 * item pointers.  This can be significantly faster, primarily because TID
	 * is a pass-by-reference type on all platforms, whereas int8 is
	 * pass-by-value on most platforms.
	 */
	state.tuplesort = FUNC14(INT8OID, Int8LessOperator,
											InvalidOid, false,
											maintenance_work_mem,
											NULL, false);
	state.htups = state.itups = state.tups_inserted = 0;

	/* ambulkdelete updates progress metrics */
	(void) FUNC6(&ivinfo, NULL,
							 validate_index_callback, (void *) &state);

	/* Execute the sort */
	{
		const int	index[] = {
			PROGRESS_CREATEIDX_PHASE,
			PROGRESS_SCAN_BLOCKS_DONE,
			PROGRESS_SCAN_BLOCKS_TOTAL
		};
		const int64 val[] = {
			PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT,
			0, 0
		};

		FUNC9(3, index, val);
	}
	FUNC16(state.tuplesort);

	/*
	 * Now scan the heap and "merge" it with the index
	 */
	FUNC10(PROGRESS_CREATEIDX_PHASE,
								 PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN);
	FUNC12(heapRelation,
							  indexRelation,
							  indexInfo,
							  snapshot,
							  &state);

	/* Done with tuplesort object */
	FUNC15(state.tuplesort);

	FUNC5(DEBUG2,
		 "validate_index found %.0f heap tuples, %.0f index tuples; inserted %.0f missing tuples",
		 state.htups, state.itups, state.tups_inserted);

	/* Roll back any GUC changes executed by index functions */
	FUNC0(false, save_nestlevel);

	/* Restore userid and security context */
	FUNC4(save_userid, save_sec_context);

	/* Close rels, but keep locks */
	FUNC7(indexRelation, NoLock);
	FUNC11(heapRelation, NoLock);
}