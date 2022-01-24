#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* methods; int /*<<< orphan*/ * ident; int /*<<< orphan*/ * firstchild; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* delete_context ) (TYPE_2__*) ;} ;
typedef  TYPE_2__* MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* TopMemoryContext ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(MemoryContext context)
{
	FUNC1(FUNC4(context));
	/* We had better not be deleting TopMemoryContext ... */
	FUNC0(context != TopMemoryContext);
	/* And not CurrentMemoryContext, either */
	FUNC0(context != CurrentMemoryContext);

	/* save a function call in common case where there are no children */
	if (context->firstchild != NULL)
		FUNC3(context);

	/*
	 * It's not entirely clear whether 'tis better to do this before or after
	 * delinking the context; but an error in a callback will likely result in
	 * leaking the whole context (if it's not a root context) if we do it
	 * after, so let's do it before.
	 */
	FUNC2(context);

	/*
	 * We delink the context from its parent before deleting it, so that if
	 * there's an error we won't have deleted/busted contexts still attached
	 * to the context tree.  Better a leak than a crash.
	 */
	FUNC5(context, NULL);

	/*
	 * Also reset the context's ident pointer, in case it points into the
	 * context.  This would only matter if someone tries to get stats on the
	 * (already unlinked) context, which is unlikely, but let's be safe.
	 */
	context->ident = NULL;

	context->methods->delete_context(context);

	FUNC6(context);
}