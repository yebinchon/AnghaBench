#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_13__ {int /*<<< orphan*/  fn_mcxt; } ;
struct TYPE_15__ {int shutdown_reg; TYPE_2__* funcResultDesc; int /*<<< orphan*/ * funcResultSlot; TYPE_1__ func; int /*<<< orphan*/ * funcResultStore; } ;
struct TYPE_14__ {int tdrefcount; } ;
typedef  TYPE_3__ SetExprState ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ExprContext ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShutdownSetExpr ; 
 int /*<<< orphan*/  TTSOpsMinimalTuple ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(SetExprState *sexpr,
							ExprContext *econtext,
							Tuplestorestate *resultStore,
							TupleDesc resultDesc)
{
	sexpr->funcResultStore = resultStore;

	if (sexpr->funcResultSlot == NULL)
	{
		/* Create a slot so we can read data out of the tuplestore */
		TupleDesc	slotDesc;
		MemoryContext oldcontext;

		oldcontext = FUNC3(sexpr->func.fn_mcxt);

		/*
		 * If we were not able to determine the result rowtype from context,
		 * and the function didn't return a tupdesc, we have to fail.
		 */
		if (sexpr->funcResultDesc)
			slotDesc = sexpr->funcResultDesc;
		else if (resultDesc)
		{
			/* don't assume resultDesc is long-lived */
			slotDesc = FUNC0(resultDesc);
		}
		else
		{
			FUNC6(ERROR,
					(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC8("function returning setof record called in "
							"context that cannot accept type record")));
			slotDesc = NULL;	/* keep compiler quiet */
		}

		sexpr->funcResultSlot = FUNC2(slotDesc,
														 &TTSOpsMinimalTuple);
		FUNC3(oldcontext);
	}

	/*
	 * If function provided a tupdesc, cross-check it.  We only really need to
	 * do this for functions returning RECORD, but might as well do it always.
	 */
	if (resultDesc)
	{
		if (sexpr->funcResultDesc)
			FUNC9(sexpr->funcResultDesc, resultDesc);

		/*
		 * If it is a dynamically-allocated TupleDesc, free it: it is
		 * typically allocated in a per-query context, so we must avoid
		 * leaking it across multiple usages.
		 */
		if (resultDesc->tdrefcount == -1)
			FUNC1(resultDesc);
	}

	/* Register cleanup callback if we didn't already */
	if (!sexpr->shutdown_reg)
	{
		FUNC5(econtext,
									ShutdownSetExpr,
									FUNC4(sexpr));
		sexpr->shutdown_reg = true;
	}
}