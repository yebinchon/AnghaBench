#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_32__ {int /*<<< orphan*/  attisdropped; } ;
struct TYPE_31__ {int operation; scalar_t__ onConflictAction; scalar_t__ returningLists; scalar_t__ withCheckOptionLists; } ;
struct TYPE_30__ {int /*<<< orphan*/  extraUpdatedCols; int /*<<< orphan*/  updatedCols; int /*<<< orphan*/  relid; } ;
struct TYPE_29__ {TYPE_1__* trigdesc; } ;
struct TYPE_28__ {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int natts; } ;
struct TYPE_26__ {scalar_t__ trig_update_before_row; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  TYPE_4__* Relation ;
typedef  TYPE_5__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_6__ ModifyTable ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_7__* Form_pg_attribute ;
typedef  int CmdType ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int AttrNumber ;

/* Variables and functions */
#define  CMD_DELETE 130 
#define  CMD_INSERT 129 
#define  CMD_UPDATE 128 
 int /*<<< orphan*/  ERROR ; 
 int FirstLowInvalidHeapAttributeNumber ; 
 int InvalidAttrNumber ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ ONCONFLICT_NONE ; 
 scalar_t__ ONCONFLICT_NOTHING ; 
 TYPE_2__* FUNC0 (TYPE_4__*) ; 
 TYPE_7__* FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC17(PlannerInfo *root,
						  ModifyTable *plan,
						  Index resultRelation,
						  int subplan_index)
{
	CmdType		operation = plan->operation;
	RangeTblEntry *rte = FUNC14(resultRelation, root);
	Relation	rel;
	StringInfoData sql;
	List	   *targetAttrs = NIL;
	List	   *withCheckOptionList = NIL;
	List	   *returningList = NIL;
	List	   *retrieved_attrs = NIL;
	bool		doNothing = false;

	FUNC8(&sql);

	/*
	 * Core code already has some lock on each rel being planned, so we can
	 * use NoLock here.
	 */
	rel = FUNC16(rte->relid, NoLock);

	/*
	 * In an INSERT, we transmit all columns that are defined in the foreign
	 * table.  In an UPDATE, if there are BEFORE ROW UPDATE triggers on the
	 * foreign table, we transmit all columns like INSERT; else we transmit
	 * only columns that were explicitly targets of the UPDATE, so as to avoid
	 * unnecessary data transmission.  (We can't do that for INSERT since we
	 * would miss sending default values for columns not listed in the source
	 * statement, and for UPDATE if there are BEFORE ROW UPDATE triggers since
	 * those triggers might change values for non-target columns, in which
	 * case we would miss sending changed values for those columns.)
	 */
	if (operation == CMD_INSERT ||
		(operation == CMD_UPDATE &&
		 rel->trigdesc &&
		 rel->trigdesc->trig_update_before_row))
	{
		TupleDesc	tupdesc = FUNC0(rel);
		int			attnum;

		for (attnum = 1; attnum <= tupdesc->natts; attnum++)
		{
			Form_pg_attribute attr = FUNC1(tupdesc, attnum - 1);

			if (!attr->attisdropped)
				targetAttrs = FUNC9(targetAttrs, attnum);
		}
	}
	else if (operation == CMD_UPDATE)
	{
		int			col;
		Bitmapset  *allUpdatedCols = FUNC3(rte->updatedCols, rte->extraUpdatedCols);

		col = -1;
		while ((col = FUNC2(allUpdatedCols, col)) >= 0)
		{
			/* bit numbers are offset by FirstLowInvalidHeapAttributeNumber */
			AttrNumber	attno = col + FirstLowInvalidHeapAttributeNumber;

			if (attno <= InvalidAttrNumber) /* shouldn't happen */
				FUNC7(ERROR, "system-column update is not supported");
			targetAttrs = FUNC9(targetAttrs, attno);
		}
	}

	/*
	 * Extract the relevant WITH CHECK OPTION list if any.
	 */
	if (plan->withCheckOptionLists)
		withCheckOptionList = (List *) FUNC11(plan->withCheckOptionLists,
												subplan_index);

	/*
	 * Extract the relevant RETURNING list if any.
	 */
	if (plan->returningLists)
		returningList = (List *) FUNC11(plan->returningLists, subplan_index);

	/*
	 * ON CONFLICT DO UPDATE and DO NOTHING case with inference specification
	 * should have already been rejected in the optimizer, as presently there
	 * is no way to recognize an arbiter index on a foreign table.  Only DO
	 * NOTHING is supported without an inference specification.
	 */
	if (plan->onConflictAction == ONCONFLICT_NOTHING)
		doNothing = true;
	else if (plan->onConflictAction != ONCONFLICT_NONE)
		FUNC7(ERROR, "unexpected ON CONFLICT specification: %d",
			 (int) plan->onConflictAction);

	/*
	 * Construct the SQL command string.
	 */
	switch (operation)
	{
		case CMD_INSERT:
			FUNC5(&sql, rte, resultRelation, rel,
							 targetAttrs, doNothing,
							 withCheckOptionList, returningList,
							 &retrieved_attrs);
			break;
		case CMD_UPDATE:
			FUNC6(&sql, rte, resultRelation, rel,
							 targetAttrs,
							 withCheckOptionList, returningList,
							 &retrieved_attrs);
			break;
		case CMD_DELETE:
			FUNC4(&sql, rte, resultRelation, rel,
							 returningList,
							 &retrieved_attrs);
			break;
		default:
			FUNC7(ERROR, "unexpected operation: %d", (int) operation);
			break;
	}

	FUNC15(rel, NoLock);

	/*
	 * Build the fdw_private list that will be available to the executor.
	 * Items in the list must match enum FdwModifyPrivateIndex, above.
	 */
	return FUNC10(FUNC13(sql.data),
					  targetAttrs,
					  FUNC12((retrieved_attrs != NIL)),
					  retrieved_attrs);
}