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
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_7__ {int /*<<< orphan*/  dbNode; } ;
struct TYPE_8__ {int /*<<< orphan*/  rd_id; TYPE_1__ rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MySerializableXact ; 
 int MyXactDidWrite ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void
FUNC15(Relation relation, HeapTuple tuple,
							   Buffer buffer)
{
	PREDICATELOCKTARGETTAG targettag;

	if (!FUNC8(relation))
		return;

	/* Check if someone else has already decided that we need to die */
	if (FUNC9(MySerializableXact))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_T_R_SERIALIZATION_FAILURE),
				 FUNC14("could not serialize access due to read/write dependencies among transactions"),
				 FUNC12("Reason code: Canceled on identification as a pivot, during conflict in checking."),
				 FUNC13("The transaction might succeed if retried.")));

	/*
	 * We're doing a write which might cause rw-conflicts now or later.
	 * Memorize that fact.
	 */
	MyXactDidWrite = true;

	/*
	 * It is important that we check for locks from the finest granularity to
	 * the coarsest granularity, so that granularity promotion doesn't cause
	 * us to miss a lock.  The new (coarser) lock will be acquired before the
	 * old (finer) locks are released.
	 *
	 * It is not possible to take and hold a lock across the checks for all
	 * granularities because each target could be in a separate partition.
	 */
	if (tuple != NULL)
	{
		FUNC7(targettag,
										 relation->rd_node.dbNode,
										 relation->rd_id,
										 FUNC3(&(tuple->t_self)),
										 FUNC4(&(tuple->t_self)));
		FUNC2(&targettag);
	}

	if (FUNC1(buffer))
	{
		FUNC5(targettag,
										relation->rd_node.dbNode,
										relation->rd_id,
										FUNC0(buffer));
		FUNC2(&targettag);
	}

	FUNC6(targettag,
										relation->rd_node.dbNode,
										relation->rd_id);
	FUNC2(&targettag);
}