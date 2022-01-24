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

bool
FUNC6(bool chain)
{
	TransactionState s = CurrentTransactionState;
	bool		result = false;

	switch (s->blockState)
	{
			/*
			 * We are in a transaction block, so tell CommitTransactionCommand
			 * to COMMIT.
			 */
		case TBLOCK_INPROGRESS:
			s->blockState = TBLOCK_END;
			result = true;
			break;

			/*
			 * We are in an implicit transaction block.  If AND CHAIN was
			 * specified, error.  Otherwise commit, but issue a warning
			 * because there was no explicit BEGIN before this.
			 */
		case TBLOCK_IMPLICIT_INPROGRESS:
			if (chain)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 /* translator: %s represents an SQL statement name */
						 FUNC5("%s can only be used in transaction blocks",
								"COMMIT AND CHAIN")));
			else
				FUNC3(WARNING,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 FUNC5("there is no transaction in progress")));
			s->blockState = TBLOCK_END;
			result = true;
			break;

			/*
			 * We are in a failed transaction block.  Tell
			 * CommitTransactionCommand it's time to exit the block.
			 */
		case TBLOCK_ABORT:
			s->blockState = TBLOCK_ABORT_END;
			break;

			/*
			 * We are in a live subtransaction block.  Set up to subcommit all
			 * open subtransactions and then commit the main transaction.
			 */
		case TBLOCK_SUBINPROGRESS:
			while (s->parent != NULL)
			{
				if (s->blockState == TBLOCK_SUBINPROGRESS)
					s->blockState = TBLOCK_SUBCOMMIT;
				else
					FUNC2(FATAL, "EndTransactionBlock: unexpected state %s",
						 FUNC1(s->blockState));
				s = s->parent;
			}
			if (s->blockState == TBLOCK_INPROGRESS)
				s->blockState = TBLOCK_END;
			else
				FUNC2(FATAL, "EndTransactionBlock: unexpected state %s",
					 FUNC1(s->blockState));
			result = true;
			break;

			/*
			 * Here we are inside an aborted subtransaction.  Treat the COMMIT
			 * as ROLLBACK: set up to abort everything and exit the main
			 * transaction.
			 */
		case TBLOCK_SUBABORT:
			while (s->parent != NULL)
			{
				if (s->blockState == TBLOCK_SUBINPROGRESS)
					s->blockState = TBLOCK_SUBABORT_PENDING;
				else if (s->blockState == TBLOCK_SUBABORT)
					s->blockState = TBLOCK_SUBABORT_END;
				else
					FUNC2(FATAL, "EndTransactionBlock: unexpected state %s",
						 FUNC1(s->blockState));
				s = s->parent;
			}
			if (s->blockState == TBLOCK_INPROGRESS)
				s->blockState = TBLOCK_ABORT_PENDING;
			else if (s->blockState == TBLOCK_ABORT)
				s->blockState = TBLOCK_ABORT_END;
			else
				FUNC2(FATAL, "EndTransactionBlock: unexpected state %s",
					 FUNC1(s->blockState));
			break;

			/*
			 * The user issued COMMIT when not inside a transaction.  For
			 * COMMIT without CHAIN, issue a WARNING, staying in
			 * TBLOCK_STARTED state.  The upcoming call to
			 * CommitTransactionCommand() will then close the transaction and
			 * put us back into the default state.  For COMMIT AND CHAIN,
			 * error.
			 */
		case TBLOCK_STARTED:
			if (chain)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 /* translator: %s represents an SQL statement name */
						 FUNC5("%s can only be used in transaction blocks",
								"COMMIT AND CHAIN")));
			else
				FUNC3(WARNING,
						(FUNC4(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
						 FUNC5("there is no transaction in progress")));
			result = true;
			break;

			/*
			 * The user issued a COMMIT that somehow ran inside a parallel
			 * worker.  We can't cope with that.
			 */
		case TBLOCK_PARALLEL_INPROGRESS:
			FUNC3(FATAL,
					(FUNC4(ERRCODE_INVALID_TRANSACTION_STATE),
					 FUNC5("cannot commit during a parallel operation")));
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
			FUNC2(FATAL, "EndTransactionBlock: unexpected state %s",
				 FUNC1(s->blockState));
			break;
	}

	FUNC0(s->blockState == TBLOCK_STARTED ||
		   s->blockState == TBLOCK_END ||
		   s->blockState == TBLOCK_ABORT_END ||
		   s->blockState == TBLOCK_ABORT_PENDING);

	s->chain = chain;

	return result;
}