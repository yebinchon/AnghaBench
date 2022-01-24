#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TransactionState ;
struct TYPE_5__ {int blockState; scalar_t__ savepointLevel; struct TYPE_5__* parent; struct TYPE_5__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERRCODE_NO_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_S_E_INVALID_SPECIFICATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 
#define  TBLOCK_ABORT 147 
#define  TBLOCK_ABORT_END 146 
#define  TBLOCK_ABORT_PENDING 145 
#define  TBLOCK_BEGIN 144 
#define  TBLOCK_DEFAULT 143 
#define  TBLOCK_END 142 
#define  TBLOCK_IMPLICIT_INPROGRESS 141 
#define  TBLOCK_INPROGRESS 140 
#define  TBLOCK_PARALLEL_INPROGRESS 139 
#define  TBLOCK_PREPARE 138 
#define  TBLOCK_STARTED 137 
#define  TBLOCK_SUBABORT 136 
#define  TBLOCK_SUBABORT_END 135 
#define  TBLOCK_SUBABORT_PENDING 134 
#define  TBLOCK_SUBABORT_RESTART 133 
#define  TBLOCK_SUBBEGIN 132 
#define  TBLOCK_SUBCOMMIT 131 
#define  TBLOCK_SUBINPROGRESS 130 
#define  TBLOCK_SUBRELEASE 129 
#define  TBLOCK_SUBRESTART 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char const*) ; 

void
FUNC9(const char *name)
{
	TransactionState s = CurrentTransactionState;
	TransactionState target,
				xact;

	/*
	 * Workers synchronize transaction state at the beginning of each parallel
	 * operation, so we can't account for transaction state change after that
	 * point.  (Note that this check will certainly error out if s->blockState
	 * is TBLOCK_PARALLEL_INPROGRESS, so we can treat that as an invalid case
	 * below.)
	 */
	if (FUNC2())
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC7("cannot release savepoints during a parallel operation")));

	switch (s->blockState)
	{
			/*
			 * We can't release a savepoint if there is no savepoint defined.
			 */
		case TBLOCK_INPROGRESS:
			FUNC5(ERROR,
					(FUNC6(ERRCODE_S_E_INVALID_SPECIFICATION),
					 FUNC7("savepoint \"%s\" does not exist", name)));
			break;

		case TBLOCK_IMPLICIT_INPROGRESS:
			/* See comment about implicit transactions in DefineSavepoint */
			FUNC5(ERROR,
					(FUNC6(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
			/* translator: %s represents an SQL statement name */
					 FUNC7("%s can only be used in transaction blocks",
							"RELEASE SAVEPOINT")));
			break;

			/*
			 * We are in a non-aborted subtransaction.  This is the only valid
			 * case.
			 */
		case TBLOCK_SUBINPROGRESS:
			break;

			/* These cases are invalid. */
		case TBLOCK_DEFAULT:
		case TBLOCK_STARTED:
		case TBLOCK_BEGIN:
		case TBLOCK_PARALLEL_INPROGRESS:
		case TBLOCK_SUBBEGIN:
		case TBLOCK_END:
		case TBLOCK_SUBRELEASE:
		case TBLOCK_SUBCOMMIT:
		case TBLOCK_ABORT:
		case TBLOCK_SUBABORT:
		case TBLOCK_ABORT_END:
		case TBLOCK_SUBABORT_END:
		case TBLOCK_ABORT_PENDING:
		case TBLOCK_SUBABORT_PENDING:
		case TBLOCK_SUBRESTART:
		case TBLOCK_SUBABORT_RESTART:
		case TBLOCK_PREPARE:
			FUNC4(FATAL, "ReleaseSavepoint: unexpected state %s",
				 FUNC1(s->blockState));
			break;
	}

	for (target = s; FUNC3(target); target = target->parent)
	{
		if (FUNC3(target->name) && FUNC8(target->name, name) == 0)
			break;
	}

	if (!FUNC3(target))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_S_E_INVALID_SPECIFICATION),
				 FUNC7("savepoint \"%s\" does not exist", name)));

	/* disallow crossing savepoint level boundaries */
	if (target->savepointLevel != s->savepointLevel)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_S_E_INVALID_SPECIFICATION),
				 FUNC7("savepoint \"%s\" does not exist within current savepoint level", name)));

	/*
	 * Mark "commit pending" all subtransactions up to the target
	 * subtransaction.  The actual commits will happen when control gets to
	 * CommitTransactionCommand.
	 */
	xact = CurrentTransactionState;
	for (;;)
	{
		FUNC0(xact->blockState == TBLOCK_SUBINPROGRESS);
		xact->blockState = TBLOCK_SUBRELEASE;
		if (xact == target)
			break;
		xact = xact->parent;
		FUNC0(FUNC3(xact));
	}
}