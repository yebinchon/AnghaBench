#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TransactionState ;
struct TYPE_5__ {int /*<<< orphan*/ * curTransactionContext; TYPE_1__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  curTransactionContext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurTransactionContext ; 
 TYPE_2__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * TransactionAbortContext ; 

__attribute__((used)) static void
FUNC4(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC0(s->parent != NULL);

	/* Make sure we're not in an about-to-be-deleted context */
	FUNC3(s->parent->curTransactionContext);
	CurTransactionContext = s->parent->curTransactionContext;

	/*
	 * Clear the special abort context for next time.
	 */
	if (TransactionAbortContext != NULL)
		FUNC2(TransactionAbortContext);

	/*
	 * Delete the subxact local memory contexts. Its CurTransactionContext can
	 * go too (note this also kills CurTransactionContexts from any children
	 * of the subxact).
	 */
	if (s->curTransactionContext)
		FUNC1(s->curTransactionContext);
	s->curTransactionContext = NULL;
}