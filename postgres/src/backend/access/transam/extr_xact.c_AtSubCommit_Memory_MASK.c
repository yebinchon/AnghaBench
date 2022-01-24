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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC0(s->parent != NULL);

	/* Return to parent transaction level's memory context. */
	CurTransactionContext = s->parent->curTransactionContext;
	FUNC3(CurTransactionContext);

	/*
	 * Ordinarily we cannot throw away the child's CurTransactionContext,
	 * since the data it contains will be needed at upper commit.  However, if
	 * there isn't actually anything in it, we can throw it away.  This avoids
	 * a small memory leak in the common case of "trivial" subxacts.
	 */
	if (FUNC2(s->curTransactionContext))
	{
		FUNC1(s->curTransactionContext);
		s->curTransactionContext = NULL;
	}
}