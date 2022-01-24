#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  result_typioparam; int /*<<< orphan*/  result_in_func; scalar_t__ fn_retistuple; int /*<<< orphan*/  fn_retisset; } ;
typedef  TYPE_1__ pltcl_proc_desc ;
struct TYPE_8__ {TYPE_3__* ret_tupdesc; int /*<<< orphan*/ * tuple_store; TYPE_1__* prodesc; int /*<<< orphan*/ * fcinfo; } ;
typedef  TYPE_2__ pltcl_call_state ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/ * FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int TCL_ERROR ; 
 int TCL_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,TYPE_2__*) ; 
 TYPE_2__* pltcl_current_call_state ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(ClientData cdata, Tcl_Interp *interp,
				 int objc, Tcl_Obj *const objv[])
{
	pltcl_call_state *call_state = pltcl_current_call_state;
	FunctionCallInfo fcinfo = call_state->fcinfo;
	pltcl_proc_desc *prodesc = call_state->prodesc;
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;
	volatile int result = TCL_OK;

	/*
	 * Check that we're called as a set-returning function
	 */
	if (fcinfo == NULL)
	{
		FUNC8(interp,
						 FUNC7("return_next cannot be used in triggers", -1));
		return TCL_ERROR;
	}

	if (!prodesc->fn_retisset)
	{
		FUNC8(interp,
						 FUNC7("return_next cannot be used in non-set-returning functions", -1));
		return TCL_ERROR;
	}

	/*
	 * Check call syntax
	 */
	if (objc != 2)
	{
		FUNC9(interp, 1, objv, "result");
		return TCL_ERROR;
	}

	/*
	 * The rest might throw elog(ERROR), so must run in a subtransaction.
	 *
	 * A small advantage of using a subtransaction is that it provides a
	 * short-lived memory context for free, so we needn't worry about leaking
	 * memory here.  To use that context, call BeginInternalSubTransaction
	 * directly instead of going through pltcl_subtrans_begin.
	 */
	FUNC0(NULL);
	FUNC4();
	{
		/* Set up tuple store if first output row */
		if (call_state->tuple_store == NULL)
			FUNC12(call_state);

		if (prodesc->fn_retistuple)
		{
			Tcl_Obj   **rowObjv;
			int			rowObjc;

			/* result should be a list, so break it down */
			if (FUNC6(interp, objv[1], &rowObjc, &rowObjv) == TCL_ERROR)
				result = TCL_ERROR;
			else
			{
				HeapTuple	tuple;

				tuple = FUNC11(interp, rowObjv, rowObjc,
												 call_state);
				FUNC15(call_state->tuple_store, tuple);
			}
		}
		else
		{
			Datum		retval;
			bool		isNull = false;

			/* for paranoia's sake, check that tupdesc has exactly one column */
			if (call_state->ret_tupdesc->natts != 1)
				FUNC10(ERROR, "wrong result type supplied in return_next");

			retval = FUNC1(&prodesc->result_in_func,
									   FUNC17((char *) FUNC5(objv[1])),
									   prodesc->result_typioparam,
									   -1);
			FUNC16(call_state->tuple_store, call_state->ret_tupdesc,
								 &retval, &isNull);
		}

		FUNC14(oldcontext, oldowner);
	}
	FUNC2();
	{
		FUNC13(interp, oldcontext, oldowner);
		return TCL_ERROR;
	}
	FUNC3();

	return result;
}