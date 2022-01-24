#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_20__ {int es_processed; TYPE_4__* es_result_relation_info; } ;
struct TYPE_14__ {TYPE_7__* state; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_19__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_18__ {scalar_t__ next_tuple; scalar_t__ num_tuples; scalar_t__ rel; scalar_t__ result; int /*<<< orphan*/  temp_cxt; int /*<<< orphan*/  retrieved_attrs; int /*<<< orphan*/  attinmeta; int /*<<< orphan*/  has_returning; scalar_t__ set_processed; } ;
struct TYPE_17__ {TYPE_12__* ri_projectReturning; } ;
struct TYPE_16__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_13__ {TYPE_3__* pi_exprContext; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  TYPE_5__ PgFdwDirectModifyState ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_6__ ForeignScanState ;
typedef  TYPE_7__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TupleTableSlot *
FUNC11(ForeignScanState *node)
{
	PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;
	EState	   *estate = node->ss.ps.state;
	ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
	TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;
	TupleTableSlot *resultSlot;

	FUNC0(resultRelInfo->ri_projectReturning);

	/* If we didn't get any tuples, must be end of data. */
	if (dmstate->next_tuple >= dmstate->num_tuples)
		return FUNC1(slot);

	/* Increment the command es_processed count if necessary. */
	if (dmstate->set_processed)
		estate->es_processed += 1;

	/*
	 * Store a RETURNING tuple.  If has_returning is false, just emit a dummy
	 * tuple.  (has_returning is false when the local query is of the form
	 * "UPDATE/DELETE .. RETURNING 1" for example.)
	 */
	if (!dmstate->has_returning)
	{
		FUNC2(slot);
		resultSlot = slot;
	}
	else
	{
		/*
		 * On error, be sure to release the PGresult on the way out.  Callers
		 * do not have PG_TRY blocks to ensure this happens.
		 */
		FUNC7();
		{
			HeapTuple	newtup;

			newtup = FUNC10(dmstate->result,
												dmstate->next_tuple,
												dmstate->rel,
												dmstate->attinmeta,
												dmstate->retrieved_attrs,
												node,
												dmstate->temp_cxt);
			FUNC3(newtup, slot, false);
		}
		FUNC4();
		{
			if (dmstate->result)
				FUNC8(dmstate->result);
			FUNC6();
		}
		FUNC5();

		/* Get the updated/deleted tuple. */
		if (dmstate->rel)
			resultSlot = slot;
		else
			resultSlot = FUNC9(dmstate, slot, estate);
	}
	dmstate->next_tuple++;

	/* Make slot available for evaluation of the local query RETURNING list. */
	resultRelInfo->ri_projectReturning->pi_exprContext->ecxt_scantuple =
		resultSlot;

	return slot;
}