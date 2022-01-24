#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {int /*<<< orphan*/ * origslot; int /*<<< orphan*/  recheckestate; TYPE_4__** relsubs_rowmark; } ;
struct TYPE_15__ {int /*<<< orphan*/  wholeAttNo; int /*<<< orphan*/  ctidAttNo; int /*<<< orphan*/  toidAttNo; TYPE_3__* rowmark; } ;
struct TYPE_14__ {scalar_t__ markType; scalar_t__ rti; scalar_t__ prti; scalar_t__ relid; TYPE_6__* relation; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* RefetchForeignRow ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ;} ;
struct TYPE_12__ {scalar_t__ relkind; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int Index ;
typedef  TYPE_2__ FdwRoutine ;
typedef  TYPE_3__ ExecRowMark ;
typedef  TYPE_4__ ExecAuxRowMark ;
typedef  TYPE_5__ EPQState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_6__*,int) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ ROW_MARK_COPY ; 
 scalar_t__ ROW_MARK_REFERENCE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  SnapshotAny ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC16(EPQState *epqstate, Index rti, TupleTableSlot *slot)
{
	ExecAuxRowMark *earm = epqstate->relsubs_rowmark[rti - 1];
	ExecRowMark *erm = earm->rowmark;
	Datum		datum;
	bool		isNull;

	FUNC0(earm != NULL);
	FUNC0(epqstate->origslot != NULL);

	if (FUNC8(erm->markType))
		FUNC10(ERROR, "EvalPlanQual doesn't support locking rowmarks");

	/* if child rel, must check whether it produced this row */
	if (erm->rti != erm->prti)
	{
		Oid			tableoid;

		datum = FUNC3(epqstate->origslot,
									 earm->toidAttNo,
									 &isNull);
		/* non-locked rels could be on the inside of outer joins */
		if (isNull)
			return false;

		tableoid = FUNC1(datum);

		FUNC0(FUNC6(erm->relid));
		if (tableoid != erm->relid)
		{
			/* this child is inactive right now */
			return false;
		}
	}

	if (erm->markType == ROW_MARK_REFERENCE)
	{
		FUNC0(erm->relation != NULL);

		/* fetch the tuple's ctid */
		datum = FUNC3(epqstate->origslot,
									 earm->ctidAttNo,
									 &isNull);
		/* non-locked rels could be on the inside of outer joins */
		if (isNull)
			return false;

		/* fetch requests on foreign tables must be passed to their FDW */
		if (erm->relation->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
		{
			FdwRoutine *fdwroutine;
			bool		updated = false;

			fdwroutine = FUNC5(erm->relation, false);
			/* this should have been checked already, but let's be safe */
			if (fdwroutine->RefetchForeignRow == NULL)
				FUNC11(ERROR,
						(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC13("cannot lock rows in foreign table \"%s\"",
								FUNC7(erm->relation))));

			fdwroutine->RefetchForeignRow(epqstate->recheckestate,
										  erm,
										  datum,
										  slot,
										  &updated);
			if (FUNC9(slot))
				FUNC10(ERROR, "failed to fetch tuple for EvalPlanQual recheck");

			/*
			 * Ideally we'd insist on updated == false here, but that assumes
			 * that FDWs can track that exactly, which they might not be able
			 * to.  So just ignore the flag.
			 */
			return true;
		}
		else
		{
			/* ordinary table, fetch the tuple */
			if (!FUNC15(erm->relation,
											   (ItemPointer) FUNC2(datum),
											   SnapshotAny, slot))
				FUNC10(ERROR, "failed to fetch tuple for EvalPlanQual recheck");
			return true;
		}
	}
	else
	{
		FUNC0(erm->markType == ROW_MARK_COPY);

		/* fetch the whole-row Var for the relation */
		datum = FUNC3(epqstate->origslot,
									 earm->wholeAttNo,
									 &isNull);
		/* non-locked rels could be on the inside of outer joins */
		if (isNull)
			return false;

		FUNC4(datum, slot);
		return true;
	}
}