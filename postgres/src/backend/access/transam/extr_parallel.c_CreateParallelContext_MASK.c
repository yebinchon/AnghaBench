#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nworkers; int /*<<< orphan*/  node; int /*<<< orphan*/  estimator; int /*<<< orphan*/  error_context_stack; void* function_name; void* library_name; int /*<<< orphan*/  subid; } ;
typedef  TYPE_1__ ParallelContext ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_context_stack ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  pcxt_list ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

ParallelContext *
FUNC8(const char *library_name, const char *function_name,
					  int nworkers)
{
	MemoryContext oldcontext;
	ParallelContext *pcxt;

	/* It is unsafe to create a parallel context if not in parallel mode. */
	FUNC0(FUNC2());

	/* Number of workers should be non-negative. */
	FUNC0(nworkers >= 0);

	/* We might be running in a short-lived memory context. */
	oldcontext = FUNC3(TopTransactionContext);

	/* Initialize a new ParallelContext. */
	pcxt = FUNC5(sizeof(ParallelContext));
	pcxt->subid = FUNC1();
	pcxt->nworkers = nworkers;
	pcxt->library_name = FUNC6(library_name);
	pcxt->function_name = FUNC6(function_name);
	pcxt->error_context_stack = error_context_stack;
	FUNC7(&pcxt->estimator);
	FUNC4(&pcxt_list, &pcxt->node);

	/* Restore previous memory context. */
	FUNC3(oldcontext);

	return pcxt;
}