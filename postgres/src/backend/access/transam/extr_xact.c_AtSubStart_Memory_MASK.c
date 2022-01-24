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
struct TYPE_3__ {int /*<<< orphan*/ * curTransactionContext; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CurTransactionContext ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC1(CurTransactionContext != NULL);

	/*
	 * Create a CurTransactionContext, which will be used to hold data that
	 * survives subtransaction commit but disappears on subtransaction abort.
	 * We make it a child of the immediate parent's CurTransactionContext.
	 */
	CurTransactionContext = FUNC0(CurTransactionContext,
												  "CurTransactionContext",
												  ALLOCSET_DEFAULT_SIZES);
	s->curTransactionContext = CurTransactionContext;

	/* Make the CurTransactionContext active. */
	FUNC2(CurTransactionContext);
}