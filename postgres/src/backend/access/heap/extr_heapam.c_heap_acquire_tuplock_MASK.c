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
typedef  int /*<<< orphan*/  Relation ;
typedef  int LockWaitPolicy ;
typedef  int /*<<< orphan*/  LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_LOCK_NOT_AVAILABLE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  LockWaitBlock 130 
#define  LockWaitError 129 
#define  LockWaitSkip 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(Relation relation, ItemPointer tid, LockTupleMode mode,
					 LockWaitPolicy wait_policy, bool *have_tuple_lock)
{
	if (*have_tuple_lock)
		return true;

	switch (wait_policy)
	{
		case LockWaitBlock:
			FUNC1(relation, tid, mode);
			break;

		case LockWaitSkip:
			if (!FUNC0(relation, tid, mode))
				return false;
			break;

		case LockWaitError:
			if (!FUNC0(relation, tid, mode))
				FUNC3(ERROR,
						(FUNC4(ERRCODE_LOCK_NOT_AVAILABLE),
						 FUNC5("could not obtain lock on row in relation \"%s\"",
								FUNC2(relation))));
			break;
	}
	*have_tuple_lock = true;

	return true;
}