#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int TM_Result ;
typedef  int /*<<< orphan*/  TM_FailureData ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
#define  TM_Deleted 131 
#define  TM_Ok 130 
#define  TM_SelfModified 129 
#define  TM_Updated 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

void
FUNC3(Relation rel, ItemPointer otid,
						  TupleTableSlot *slot,
						  Snapshot snapshot,
						  bool *update_indexes)
{
	TM_Result	result;
	TM_FailureData tmfd;
	LockTupleMode lockmode;

	result = FUNC2(rel, otid, slot,
								FUNC0(true),
								snapshot, InvalidSnapshot,
								true /* wait for commit */ ,
								&tmfd, &lockmode, update_indexes);

	switch (result)
	{
		case TM_SelfModified:
			/* Tuple was already updated in current command? */
			FUNC1(ERROR, "tuple already updated by self");
			break;

		case TM_Ok:
			/* done successfully */
			break;

		case TM_Updated:
			FUNC1(ERROR, "tuple concurrently updated");
			break;

		case TM_Deleted:
			FUNC1(ERROR, "tuple concurrently deleted");
			break;

		default:
			FUNC1(ERROR, "unrecognized table_tuple_update status: %u", result);
			break;
	}

}