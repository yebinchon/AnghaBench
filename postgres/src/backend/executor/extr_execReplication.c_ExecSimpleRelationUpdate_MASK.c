#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {int /*<<< orphan*/  tts_tid; } ;
typedef  TYPE_5__ TupleTableSlot ;
struct TYPE_38__ {int /*<<< orphan*/  es_snapshot; TYPE_6__* es_result_relation_info; } ;
struct TYPE_37__ {TYPE_4__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_36__ {scalar_t__ ri_NumIndices; scalar_t__ ri_PartitionCheck; TYPE_2__* ri_TrigDesc; TYPE_7__* ri_RelationDesc; } ;
struct TYPE_34__ {TYPE_3__* constr; } ;
struct TYPE_33__ {scalar_t__ has_generated_stored; } ;
struct TYPE_32__ {scalar_t__ trig_update_before_row; } ;
struct TYPE_31__ {scalar_t__ relkind; } ;
typedef  TYPE_6__ ResultRelInfo ;
typedef  TYPE_7__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_8__ EState ;
typedef  int /*<<< orphan*/  EPQState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,TYPE_8__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int*) ; 

void
FUNC10(EState *estate, EPQState *epqstate,
						 TupleTableSlot *searchslot, TupleTableSlot *slot)
{
	bool		skip_tuple = false;
	ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
	Relation	rel = resultRelInfo->ri_RelationDesc;
	ItemPointer tid = &(searchslot->tts_tid);

	/* For now we support only tables. */
	FUNC0(rel->rd_rel->relkind == RELKIND_RELATION);

	FUNC1(rel, CMD_UPDATE);

	/* BEFORE ROW UPDATE Triggers */
	if (resultRelInfo->ri_TrigDesc &&
		resultRelInfo->ri_TrigDesc->trig_update_before_row)
	{
		if (!FUNC3(estate, epqstate, resultRelInfo,
								  tid, NULL, slot))
			skip_tuple = true;	/* "do nothing" */
	}

	if (!skip_tuple)
	{
		List	   *recheckIndexes = NIL;
		bool		update_indexes;

		/* Compute stored generated columns */
		if (rel->rd_att->constr &&
			rel->rd_att->constr->has_generated_stored)
			FUNC4(estate, slot);

		/* Check the constraints of the tuple */
		if (rel->rd_att->constr)
			FUNC5(resultRelInfo, slot, estate);
		if (resultRelInfo->ri_PartitionCheck)
			FUNC7(resultRelInfo, slot, estate, true);

		FUNC9(rel, tid, slot, estate->es_snapshot,
								  &update_indexes);

		if (resultRelInfo->ri_NumIndices > 0 && update_indexes)
			recheckIndexes = FUNC6(slot, estate, false, NULL,
												   NIL);

		/* AFTER ROW UPDATE Triggers */
		FUNC2(estate, resultRelInfo,
							 tid, NULL, slot,
							 recheckIndexes, NULL);

		FUNC8(recheckIndexes);
	}
}