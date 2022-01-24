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
struct TYPE_3__ {int blockState; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
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
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(const char *name)
{
	TransactionState s = CurrentTransactionState;

	/*
	 * Workers synchronize transaction state at the beginning of each parallel
	 * operation, so we can't account for new subtransactions after that
	 * point. We might be able to make an exception for the type of
	 * subtransaction established by this function, which is typically used in
	 * contexts where we're going to release or roll back the subtransaction
	 * before proceeding further, so that no enduring change to the
	 * transaction state occurs. For now, however, we prohibit this case along
	 * with all the others.
	 */
	if (FUNC2())
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC9("cannot start subtransactions during a parallel operation")));

	switch (s->blockState)
	{
		case TBLOCK_STARTED:
		case TBLOCK_INPROGRESS:
		case TBLOCK_IMPLICIT_INPROGRESS:
		case TBLOCK_END:
		case TBLOCK_PREPARE:
		case TBLOCK_SUBINPROGRESS:
			/* Normal subtransaction start */
			FUNC4();
			s = CurrentTransactionState;	/* changed by push */

			/*
			 * Savepoint names, like the TransactionState block itself, live
			 * in TopTransactionContext.
			 */
			if (name)
				s->name = FUNC3(TopTransactionContext, name);
			break;

			/* These cases are invalid. */
		case TBLOCK_DEFAULT:
		case TBLOCK_BEGIN:
		case TBLOCK_PARALLEL_INPROGRESS:
		case TBLOCK_SUBBEGIN:
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
			FUNC6(FATAL, "BeginInternalSubTransaction: unexpected state %s",
				 FUNC0(s->blockState));
			break;
	}

	FUNC1();
	FUNC5();
}