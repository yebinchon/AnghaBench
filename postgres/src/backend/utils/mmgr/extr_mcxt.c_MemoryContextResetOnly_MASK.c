#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int isReset; TYPE_1__* methods; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* reset ) (TYPE_2__*) ;} ;
typedef  TYPE_2__* MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(MemoryContext context)
{
	FUNC0(FUNC2(context));

	/* Nothing to do if no pallocs since startup or last reset */
	if (!context->isReset)
	{
		FUNC1(context);

		/*
		 * If context->ident points into the context's memory, it will become
		 * a dangling pointer.  We could prevent that by setting it to NULL
		 * here, but that would break valid coding patterns that keep the
		 * ident elsewhere, e.g. in a parent context.  Another idea is to use
		 * MemoryContextContains(), but we don't require ident strings to be
		 * in separately-palloc'd chunks, so that risks false positives.  So
		 * for now we assume the programmer got it right.
		 */

		context->methods->reset(context);
		context->isReset = true;
		FUNC4(context);
		FUNC3(context, 0, false);
	}
}