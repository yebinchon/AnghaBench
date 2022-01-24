#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_27__ {TYPE_5__* es_result_relation_info; } ;
struct TYPE_26__ {TYPE_4__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_25__ {scalar_t__ ri_NumIndices; TYPE_6__* ri_RelationDesc; scalar_t__ ri_PartitionCheck; TYPE_2__* ri_TrigDesc; } ;
struct TYPE_24__ {TYPE_3__* constr; } ;
struct TYPE_23__ {scalar_t__ has_generated_stored; } ;
struct TYPE_22__ {scalar_t__ trig_insert_before_row; } ;
struct TYPE_21__ {scalar_t__ relkind; } ;
typedef  TYPE_5__ ResultRelInfo ;
typedef  TYPE_6__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_7__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_INSERT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_7__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_7__*,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *) ; 

void
FUNC10(EState *estate, TupleTableSlot *slot)
{
	bool		skip_tuple = false;
	ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
	Relation	rel = resultRelInfo->ri_RelationDesc;

	/* For now we support only tables. */
	FUNC0(rel->rd_rel->relkind == RELKIND_RELATION);

	FUNC1(rel, CMD_INSERT);

	/* BEFORE ROW INSERT Triggers */
	if (resultRelInfo->ri_TrigDesc &&
		resultRelInfo->ri_TrigDesc->trig_insert_before_row)
	{
		if (!FUNC3(estate, resultRelInfo, slot))
			skip_tuple = true;	/* "do nothing" */
	}

	if (!skip_tuple)
	{
		List	   *recheckIndexes = NIL;

		/* Compute stored generated columns */
		if (rel->rd_att->constr &&
			rel->rd_att->constr->has_generated_stored)
			FUNC4(estate, slot);

		/* Check the constraints of the tuple */
		if (rel->rd_att->constr)
			FUNC5(resultRelInfo, slot, estate);
		if (resultRelInfo->ri_PartitionCheck)
			FUNC7(resultRelInfo, slot, estate, true);

		/* OK, store the tuple and create index entries for it */
		FUNC9(resultRelInfo->ri_RelationDesc, slot);

		if (resultRelInfo->ri_NumIndices > 0)
			recheckIndexes = FUNC6(slot, estate, false, NULL,
												   NIL);

		/* AFTER ROW INSERT Triggers */
		FUNC2(estate, resultRelInfo, slot,
							 recheckIndexes, NULL);

		/*
		 * XXX we should in theory pass a TransitionCaptureState object to the
		 * above to capture transition tuples, but after statement triggers
		 * don't actually get fired by replication yet anyway
		 */

		FUNC8(recheckIndexes);
	}
}