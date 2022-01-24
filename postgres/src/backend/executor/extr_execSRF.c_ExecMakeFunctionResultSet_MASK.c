#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_3__ TupleTableSlot ;
struct TYPE_21__ {int nargs; int isnull; TYPE_2__* args; int /*<<< orphan*/ * resultinfo; } ;
struct TYPE_20__ {int allowedModes; int returnMode; scalar_t__ isDone; int /*<<< orphan*/ * setDesc; int /*<<< orphan*/ * setResult; int /*<<< orphan*/  expectedDesc; int /*<<< orphan*/ * econtext; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {scalar_t__ fn_strict; } ;
struct TYPE_19__ {int setArgsValid; int shutdown_reg; TYPE_1__ func; int /*<<< orphan*/  funcResultDesc; int /*<<< orphan*/ * args; TYPE_6__* fcinfo; int /*<<< orphan*/ * funcResultStore; TYPE_3__* funcResultSlot; scalar_t__ funcReturnsTuple; } ;
struct TYPE_17__ {scalar_t__ isnull; } ;
typedef  TYPE_4__ SetExprState ;
typedef  TYPE_5__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  PgStat_FunctionCallUsage ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_6__* FunctionCallInfo ;
typedef  scalar_t__ ExprDoneCond ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ExprEndResult ; 
 scalar_t__ ExprMultipleResult ; 
 scalar_t__ ExprSingleResult ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SFRM_Materialize ; 
 int SFRM_ValuePerCall ; 
 int /*<<< orphan*/  ShutdownSetExpr ; 
 int /*<<< orphan*/  T_ReturnSetInfo ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int,TYPE_3__*) ; 

Datum
FUNC16(SetExprState *fcache,
						  ExprContext *econtext,
						  MemoryContext argContext,
						  bool *isNull,
						  ExprDoneCond *isDone)
{
	List	   *arguments;
	Datum		result;
	FunctionCallInfo fcinfo;
	PgStat_FunctionCallUsage fcusage;
	ReturnSetInfo rsinfo;
	bool		callit;
	int			i;

restart:

	/* Guard against stack overflow due to overly complex expressions */
	FUNC7();

	/*
	 * If a previous call of the function returned a set result in the form of
	 * a tuplestore, continue reading rows from the tuplestore until it's
	 * empty.
	 */
	if (fcache->funcResultStore)
	{
		TupleTableSlot *slot = fcache->funcResultSlot;
		MemoryContext oldContext;
		bool		foundTup;

		/*
		 * Have to make sure tuple in slot lives long enough, otherwise
		 * clearing the slot could end up trying to free something already
		 * freed.
		 */
		oldContext = FUNC4(slot->tts_mcxt);
		foundTup = FUNC15(fcache->funcResultStore, true, false,
										   fcache->funcResultSlot);
		FUNC4(oldContext);

		if (foundTup)
		{
			*isDone = ExprMultipleResult;
			if (fcache->funcReturnsTuple)
			{
				/* We must return the whole tuple as a Datum. */
				*isNull = false;
				return FUNC1(fcache->funcResultSlot);
			}
			else
			{
				/* Extract the first column and return it as a scalar. */
				return FUNC13(fcache->funcResultSlot, 1, isNull);
			}
		}
		/* Exhausted the tuplestore, so clean up */
		FUNC14(fcache->funcResultStore);
		fcache->funcResultStore = NULL;
		*isDone = ExprEndResult;
		*isNull = true;
		return (Datum) 0;
	}

	/*
	 * arguments is a list of expressions to evaluate before passing to the
	 * function manager.  We skip the evaluation if it was already done in the
	 * previous call (ie, we are continuing the evaluation of a set-valued
	 * function).  Otherwise, collect the current argument values into fcinfo.
	 *
	 * The arguments have to live in a context that lives at least until all
	 * rows from this SRF have been returned, otherwise ValuePerCall SRFs
	 * would reference freed memory after the first returned row.
	 */
	fcinfo = fcache->fcinfo;
	arguments = fcache->args;
	if (!fcache->setArgsValid)
	{
		MemoryContext oldContext = FUNC4(argContext);

		FUNC0(fcinfo, arguments, econtext);
		FUNC4(oldContext);
	}
	else
	{
		/* Reset flag (we may set it again below) */
		fcache->setArgsValid = false;
	}

	/*
	 * Now call the function, passing the evaluated parameter values.
	 */

	/* Prepare a resultinfo node for communication. */
	fcinfo->resultinfo = (Node *) &rsinfo;
	rsinfo.type = T_ReturnSetInfo;
	rsinfo.econtext = econtext;
	rsinfo.expectedDesc = fcache->funcResultDesc;
	rsinfo.allowedModes = (int) (SFRM_ValuePerCall | SFRM_Materialize);
	/* note we do not set SFRM_Materialize_Random or _Preferred */
	rsinfo.returnMode = SFRM_ValuePerCall;
	/* isDone is filled below */
	rsinfo.setResult = NULL;
	rsinfo.setDesc = NULL;

	/*
	 * If function is strict, and there are any NULL arguments, skip calling
	 * the function.
	 */
	callit = true;
	if (fcache->func.fn_strict)
	{
		for (i = 0; i < fcinfo->nargs; i++)
		{
			if (fcinfo->args[i].isnull)
			{
				callit = false;
				break;
			}
		}
	}

	if (callit)
	{
		FUNC12(fcinfo, &fcusage);

		fcinfo->isnull = false;
		rsinfo.isDone = ExprSingleResult;
		result = FUNC3(fcinfo);
		*isNull = fcinfo->isnull;
		*isDone = rsinfo.isDone;

		FUNC11(&fcusage,
								  rsinfo.isDone != ExprMultipleResult);
	}
	else
	{
		/* for a strict SRF, result for NULL is an empty set */
		result = (Datum) 0;
		*isNull = true;
		*isDone = ExprEndResult;
	}

	/* Which protocol does function want to use? */
	if (rsinfo.returnMode == SFRM_ValuePerCall)
	{
		if (*isDone != ExprEndResult)
		{
			/*
			 * Save the current argument values to re-use on the next call.
			 */
			if (*isDone == ExprMultipleResult)
			{
				fcache->setArgsValid = true;
				/* Register cleanup callback if we didn't already */
				if (!fcache->shutdown_reg)
				{
					FUNC6(econtext,
												ShutdownSetExpr,
												FUNC5(fcache));
					fcache->shutdown_reg = true;
				}
			}
		}
	}
	else if (rsinfo.returnMode == SFRM_Materialize)
	{
		/* check we're on the same page as the function author */
		if (rsinfo.isDone != ExprSingleResult)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED),
					 FUNC10("table-function protocol for materialize mode was not followed")));
		if (rsinfo.setResult != NULL)
		{
			/* prepare to return values from the tuplestore */
			FUNC2(fcache, econtext,
										rsinfo.setResult,
										rsinfo.setDesc);
			/* loop back to top to start returning from tuplestore */
			goto restart;
		}
		/* if setResult was left null, treat it as empty set */
		*isDone = ExprEndResult;
		*isNull = true;
		result = (Datum) 0;
	}
	else
		FUNC8(ERROR,
				(FUNC9(ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED),
				 FUNC10("unrecognized table-function returnMode: %d",
						(int) rsinfo.returnMode)));

	return result;
}