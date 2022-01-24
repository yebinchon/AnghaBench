#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  eval_econtext; int /*<<< orphan*/ * simple_eval_estate; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  xact_subxid; int /*<<< orphan*/  stack_econtext; } ;
typedef  TYPE_1__ SimpleEcontextStackEntry ;
typedef  TYPE_2__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/ * shared_simple_eval_estate ; 
 TYPE_1__* simple_econtext_stack ; 

__attribute__((used)) static void
FUNC5(PLpgSQL_execstate *estate)
{
	SimpleEcontextStackEntry *entry;

	/*
	 * Create an EState for evaluation of simple expressions, if there's not
	 * one already in the current transaction.  The EState is made a child of
	 * TopTransactionContext so it will have the right lifespan.
	 *
	 * Note that this path is never taken when executing a DO block; the
	 * required EState was already made by plpgsql_inline_handler.
	 */
	if (estate->simple_eval_estate == NULL)
	{
		MemoryContext oldcontext;

		if (shared_simple_eval_estate == NULL)
		{
			oldcontext = FUNC4(TopTransactionContext);
			shared_simple_eval_estate = FUNC0();
			FUNC4(oldcontext);
		}
		estate->simple_eval_estate = shared_simple_eval_estate;
	}

	/*
	 * Create a child econtext for the current function.
	 */
	estate->eval_econtext = FUNC1(estate->simple_eval_estate);

	/*
	 * Make a stack entry so we can clean up the econtext at subxact end.
	 * Stack entries are kept in TopTransactionContext for simplicity.
	 */
	entry = (SimpleEcontextStackEntry *)
		FUNC3(TopTransactionContext,
						   sizeof(SimpleEcontextStackEntry));

	entry->stack_econtext = estate->eval_econtext;
	entry->xact_subxid = FUNC2();

	entry->next = simple_econtext_stack;
	simple_econtext_stack = entry;
}