#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * curTransactionContext; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CurTransactionContext ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/ * TopTransactionContext ; 
 int /*<<< orphan*/ * TransactionAbortContext ; 

__attribute__((used)) static void
FUNC4(void)
{
	FUNC0(CurrentTransactionState->parent == NULL);

	/*
	 * Now that we're "out" of a transaction, have the system allocate things
	 * in the top memory context instead of per-transaction contexts.
	 */
	FUNC3(TopMemoryContext);

	/*
	 * Clear the special abort context for next time.
	 */
	if (TransactionAbortContext != NULL)
		FUNC2(TransactionAbortContext);

	/*
	 * Release all transaction-local memory.
	 */
	if (TopTransactionContext != NULL)
		FUNC1(TopTransactionContext);
	TopTransactionContext = NULL;
	CurTransactionContext = NULL;
	CurrentTransactionState->curTransactionContext = NULL;
}