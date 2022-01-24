#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ LastSxactCommitSeqNo; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; scalar_t__ prepareSeqNo; int /*<<< orphan*/  inConflicts; } ;
struct TYPE_10__ {int /*<<< orphan*/  inLink; TYPE_2__* sxactOut; } ;
typedef  TYPE_1__* RWConflict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* InvalidSerializableXact ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_2__* MySerializableXact ; 
 TYPE_7__* PredXact ; 
 int /*<<< orphan*/  RWConflictData ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SXACT_FLAG_DOOMED ; 
 int /*<<< orphan*/  SXACT_FLAG_PREPARED ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  inLink ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(void)
{
	RWConflict	nearConflict;

	if (MySerializableXact == InvalidSerializableXact)
		return;

	FUNC0(FUNC1());

	FUNC2(SerializableXactHashLock, LW_EXCLUSIVE);

	/* Check if someone else has already decided that we need to die */
	if (FUNC6(MySerializableXact))
	{
		FUNC0(!FUNC7(MySerializableXact));
		FUNC3(SerializableXactHashLock);
		FUNC10(ERROR,
				(FUNC11(ERRCODE_T_R_SERIALIZATION_FAILURE),
				 FUNC14("could not serialize access due to read/write dependencies among transactions"),
				 FUNC12("Reason code: Canceled on identification as a pivot, during commit attempt."),
				 FUNC13("The transaction might succeed if retried.")));
	}

	nearConflict = (RWConflict)
		FUNC4(&MySerializableXact->inConflicts,
					 &MySerializableXact->inConflicts,
					 FUNC15(RWConflictData, inLink));
	while (nearConflict)
	{
		if (!FUNC5(nearConflict->sxactOut)
			&& !FUNC6(nearConflict->sxactOut))
		{
			RWConflict	farConflict;

			farConflict = (RWConflict)
				FUNC4(&nearConflict->sxactOut->inConflicts,
							 &nearConflict->sxactOut->inConflicts,
							 FUNC15(RWConflictData, inLink));
			while (farConflict)
			{
				if (farConflict->sxactOut == MySerializableXact
					|| (!FUNC5(farConflict->sxactOut)
						&& !FUNC9(farConflict->sxactOut)
						&& !FUNC6(farConflict->sxactOut)))
				{
					/*
					 * Normally, we kill the pivot transaction to make sure we
					 * make progress if the failing transaction is retried.
					 * However, we can't kill it if it's already prepared, so
					 * in that case we commit suicide instead.
					 */
					if (FUNC8(nearConflict->sxactOut))
					{
						FUNC3(SerializableXactHashLock);
						FUNC10(ERROR,
								(FUNC11(ERRCODE_T_R_SERIALIZATION_FAILURE),
								 FUNC14("could not serialize access due to read/write dependencies among transactions"),
								 FUNC12("Reason code: Canceled on commit attempt with conflict in from prepared pivot."),
								 FUNC13("The transaction might succeed if retried.")));
					}
					nearConflict->sxactOut->flags |= SXACT_FLAG_DOOMED;
					break;
				}
				farConflict = (RWConflict)
					FUNC4(&nearConflict->sxactOut->inConflicts,
								 &farConflict->inLink,
								 FUNC15(RWConflictData, inLink));
			}
		}

		nearConflict = (RWConflict)
			FUNC4(&MySerializableXact->inConflicts,
						 &nearConflict->inLink,
						 FUNC15(RWConflictData, inLink));
	}

	MySerializableXact->prepareSeqNo = ++(PredXact->LastSxactCommitSeqNo);
	MySerializableXact->flags |= SXACT_FLAG_PREPARED;

	FUNC3(SerializableXactHashLock);
}