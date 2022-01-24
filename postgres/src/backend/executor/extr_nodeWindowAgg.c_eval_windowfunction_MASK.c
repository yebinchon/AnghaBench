#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* WindowStatePerFunc ;
struct TYPE_14__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_15__ {TYPE_2__ ps; } ;
struct TYPE_18__ {int /*<<< orphan*/ * curaggcontext; TYPE_3__ ss; } ;
typedef  TYPE_6__ WindowAggState ;
struct TYPE_19__ {int isnull; TYPE_4__* args; } ;
struct TYPE_17__ {int numArguments; int /*<<< orphan*/  resulttypeLen; int /*<<< orphan*/  resulttypeByVal; scalar_t__ winobj; int /*<<< orphan*/  winCollation; int /*<<< orphan*/  flinfo; } ;
struct TYPE_16__ {int isnull; } ;
struct TYPE_13__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC_MAX_ARGS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* fcinfo ; 

__attribute__((used)) static void
FUNC7(WindowAggState *winstate, WindowStatePerFunc perfuncstate,
					Datum *result, bool *isnull)
{
	FUNC3(fcinfo, FUNC_MAX_ARGS);
	MemoryContext oldContext;

	oldContext = FUNC5(winstate->ss.ps.ps_ExprContext->ecxt_per_tuple_memory);

	/*
	 * We don't pass any normal arguments to a window function, but we do pass
	 * it the number of arguments, in order to permit window function
	 * implementations to support varying numbers of arguments.  The real info
	 * goes through the WindowObject, which is passed via fcinfo->context.
	 */
	FUNC2(*fcinfo, &(perfuncstate->flinfo),
							 perfuncstate->numArguments,
							 perfuncstate->winCollation,
							 (void *) perfuncstate->winobj, NULL);
	/* Just in case, make all the regular argument slots be null */
	for (int argno = 0; argno < perfuncstate->numArguments; argno++)
		fcinfo->args[argno].isnull = true;
	/* Window functions don't have a current aggregate context, either */
	winstate->curaggcontext = NULL;

	*result = FUNC1(fcinfo);
	*isnull = fcinfo->isnull;

	/*
	 * Make sure pass-by-ref data is allocated in the appropriate context. (We
	 * need this in case the function returns a pointer into some short-lived
	 * tuple, as is entirely possible.)
	 */
	if (!perfuncstate->resulttypeByVal && !fcinfo->isnull &&
		!FUNC4(CurrentMemoryContext,
							   FUNC0(*result)))
		*result = FUNC6(*result,
							perfuncstate->resulttypeByVal,
							perfuncstate->resulttypeLen);

	FUNC5(oldContext);
}