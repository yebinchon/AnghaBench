#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; int chain; struct TYPE_3__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERRCODE_NO_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
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
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(bool chain)
{
	TransactionState s = CurrentTransactionState;

	switch (s->blockState)
	{
			/*
			 * We are inside a transaction block and we got a ROLLBACK command
			 * from the user, so tell CommitTransactionCommand to abort and
			 * exit the transaction block.
			 */
		case TBLOCK_INPROGRESS:
			s->blockState = TBLOCK_ABORT_PENDING;
			break;

			/*
			 * We are inside a failed transaction block and we got a ROLLBACK
			 * command from the user.  Abort processing is already done, so
			 * CommitTransactionCommand just has to cleanup and go back to
			 * idle state.
			 */
		case TBLOCK_ABORT:
			s->blockState = TBLOCK_ABORT_END;
			break;

			/*
			 * We are inside a subtransaction.  Mark everything up to top
			 * level as exitable.
			 */
		case TBLOCK_SUBINPROGRESS:
		case TBLOCK_SUBABORT:
			while (s->parent != NULL)
			{
				if (s->blockState == TBLOCK_SUBINPROGRESS)
					s->blockState = TBLOCK_SUBABORT_PENDING;
				else if (s->blockState == TBLOCK_SUBABORT)
					s->blockState = TBLOCK_SUBABORT_END;
				else
					FUNC2(FATAL, "UserAbortTransactionBlock: unexpected state %s",
						 FUNC1(s->blockState));
				s = s->parent;
			}
			if (s->blockState == TBLOCK_INPROGRESS)
				s->blockState = TBLOCK_ABORT_PENDING;
			else if (s->blockState == TBLOCK_ABORT)
				s->blockState = TBLOCK_ABORT_END;
			else
				FUNC2(FATAL, "UserAbortTransactionBlock: unexpected state %s",
					 FUNC1(s->blockState));
			break;

			/*
			 * The user issued ABORT when not inside a transaction.  For
			 * ROLLBACK without CHAIN, issue a WARNING and go to abort state.
			 * The upcoming call to CommitTransactionCommand() will then put
			 * us back into the default state.  For ROLLBACK AND CHAIN, error.
			 *
			 * We do the same thing with ABORT inside an implicit transaction,
			 * although in this case we might be rolling back actual database
			 * state changes.  (It's debatable whether we should issue a
			 * WARNING in this case, but we have done so historically.)
			 */
		case TBLOCK_STARTED:
		case TBLOCK_IMPLICIT_INPROGRESS:
			if (chain)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 /* translator: %s represents an SQL statement name */
						 FUNC5("%s can only be used in transaction blocks",
								"ROLLBACK AND CHAIN")));
			else
				FUNC3(WARNING,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 FUNC5("there is no transaction in progress")));
			s->blockState = TBLOCK_ABORT_PENDING;
			break;

			/*
			 * The user issued an ABORT that somehow ran inside a parallel
			 * worker.  We can't cope with that.
			 */
		case TBLOCK_PARALLEL_INPROGRESS:
			FUNC3(FATAL,
					(FUNC4(ERRCODE_INVALID_TRANSACTION_STATE),
					 FUNC5("cannot abort during a parallel operation")));
			break;

			/* These cases are invalid. */
		case TBLOCK_DEFAULT:
		case TBLOCK_BEGIN:
		case TBLOCK_SUBBEGIN:
		case TBLOCK_END:
		case TBLOCK_SUBRELEASE:
		case TBLOCK_SUBCOMMIT:
		case TBLOCK_ABORT_END:
		case TBLOCK_SUBABORT_END:
		case TBLOCK_ABORT_PENDING:
		case TBLOCK_SUBABORT_PENDING:
		case TBLOCK_SUBRESTART:
		case TBLOCK_SUBABORT_RESTART:
		case TBLOCK_PREPARE:
			FUNC2(FATAL, "UserAbortTransactionBlock: unexpected state %s",
				 FUNC1(s->blockState));
			break;
	}

	FUNC0(s->blockState == TBLOCK_ABORT_END ||
		   s->blockState == TBLOCK_ABORT_PENDING);

	s->chain = chain;
}