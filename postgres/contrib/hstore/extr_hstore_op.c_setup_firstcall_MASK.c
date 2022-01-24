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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {int /*<<< orphan*/  tuple_desc; void* user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HStore ;
typedef  scalar_t__ FunctionCallInfo ;
typedef  TYPE_1__ FuncCallContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(FuncCallContext *funcctx, HStore *hs,
				FunctionCallInfo fcinfo)
{
	MemoryContext oldcontext;
	HStore	   *st;

	oldcontext = FUNC1(funcctx->multi_call_memory_ctx);

	st = (HStore *) FUNC6(FUNC2(hs));
	FUNC5(st, hs, FUNC2(hs));

	funcctx->user_fctx = (void *) st;

	if (fcinfo)
	{
		TupleDesc	tupdesc;

		/* Build a tuple descriptor for our result type */
		if (FUNC4(fcinfo, NULL, &tupdesc) != TYPEFUNC_COMPOSITE)
			FUNC3(ERROR, "return type must be a row type");

		funcctx->tuple_desc = FUNC0(tupdesc);
	}

	FUNC1(oldcontext);
}