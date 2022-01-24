#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_9__ {int /*<<< orphan*/  es_output_cid; int /*<<< orphan*/  es_snapshot; } ;
struct TYPE_8__ {int /*<<< orphan*/  ri_RangeTableIndex; int /*<<< orphan*/  ri_RelationDesc; } ;
struct TYPE_7__ {int /*<<< orphan*/  traversed; int /*<<< orphan*/  cmax; } ;
typedef  int TM_Result ;
typedef  TYPE_1__ TM_FailureData ;
typedef  TYPE_2__ ResultRelInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  TYPE_3__ EState ;
typedef  int /*<<< orphan*/  EPQState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  LockWaitBlock ; 
 int /*<<< orphan*/  SnapshotAny ; 
#define  TM_Deleted 132 
#define  TM_Invisible 131 
#define  TM_Ok 130 
#define  TM_SelfModified 129 
#define  TM_Updated 128 
 int TUPLE_LOCK_FLAG_FIND_LAST_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC11(EState *estate,
				   EPQState *epqstate,
				   ResultRelInfo *relinfo,
				   ItemPointer tid,
				   LockTupleMode lockmode,
				   TupleTableSlot *oldslot,
				   TupleTableSlot **epqslot)
{
	Relation	relation = relinfo->ri_RelationDesc;

	if (epqslot != NULL)
	{
		TM_Result	test;
		TM_FailureData tmfd;
		int			lockflags = 0;

		*epqslot = NULL;

		/* caller must pass an epqstate if EvalPlanQual is possible */
		FUNC0(epqstate != NULL);

		/*
		 * lock tuple for update
		 */
		if (!FUNC2())
			lockflags |= TUPLE_LOCK_FLAG_FIND_LAST_VERSION;
		test = FUNC10(relation, tid, estate->es_snapshot, oldslot,
								estate->es_output_cid,
								lockmode, LockWaitBlock,
								lockflags,
								&tmfd);

		switch (test)
		{
			case TM_SelfModified:

				/*
				 * The target tuple was already updated or deleted by the
				 * current command, or by a later command in the current
				 * transaction.  We ignore the tuple in the former case, and
				 * throw error in the latter case, for the same reasons
				 * enumerated in ExecUpdate and ExecDelete in
				 * nodeModifyTable.c.
				 */
				if (tmfd.cmax != estate->es_output_cid)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
							 FUNC8("tuple to be updated was already modified by an operation triggered by the current command"),
							 FUNC7("Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.")));

				/* treat it as deleted; do not process */
				return false;

			case TM_Ok:
				if (tmfd.traversed)
				{
					*epqslot = FUNC1(epqstate,
											relation,
											relinfo->ri_RangeTableIndex,
											oldslot);

					/*
					 * If PlanQual failed for updated tuple - we must not
					 * process this tuple!
					 */
					if (FUNC3(*epqslot))
					{
						*epqslot = NULL;
						return false;
					}
				}
				break;

			case TM_Updated:
				if (FUNC2())
					FUNC5(ERROR,
							(FUNC6(ERRCODE_T_R_SERIALIZATION_FAILURE),
							 FUNC8("could not serialize access due to concurrent update")));
				FUNC4(ERROR, "unexpected table_tuple_lock status: %u", test);
				break;

			case TM_Deleted:
				if (FUNC2())
					FUNC5(ERROR,
							(FUNC6(ERRCODE_T_R_SERIALIZATION_FAILURE),
							 FUNC8("could not serialize access due to concurrent delete")));
				/* tuple was deleted */
				return false;

			case TM_Invisible:
				FUNC4(ERROR, "attempted to lock invisible tuple");
				break;

			default:
				FUNC4(ERROR, "unrecognized table_tuple_lock status: %u", test);
				return false;	/* keep compiler quiet */
		}
	}
	else
	{
		/*
		 * We expect the tuple to be present, thus very simple error handling
		 * suffices.
		 */
		if (!FUNC9(relation, tid, SnapshotAny,
										   oldslot))
			FUNC4(ERROR, "failed to fetch tuple for trigger");
	}

	return true;
}