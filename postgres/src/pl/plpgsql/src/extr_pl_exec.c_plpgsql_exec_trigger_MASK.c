#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_8__ ;
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_32__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
typedef  int /*<<< orphan*/  TupleConversionMap ;
struct TYPE_41__ {int /*<<< orphan*/  tg_relation; int /*<<< orphan*/ * tg_trigtuple; int /*<<< orphan*/ * tg_newtuple; int /*<<< orphan*/  tg_event; } ;
typedef  TYPE_3__ TriggerData ;
struct TYPE_46__ {struct TYPE_46__* previous; TYPE_6__* arg; int /*<<< orphan*/  callback; } ;
struct TYPE_45__ {scalar_t__ er_magic; } ;
struct TYPE_44__ {int /*<<< orphan*/  retval; int /*<<< orphan*/  rettype; scalar_t__ retisnull; scalar_t__ retisset; int /*<<< orphan*/ * err_text; int /*<<< orphan*/ * err_stmt; int /*<<< orphan*/  datum_context; scalar_t__* datums; TYPE_3__* trigdata; } ;
struct TYPE_43__ {size_t new_varno; size_t old_varno; scalar_t__ action; } ;
struct TYPE_42__ {int /*<<< orphan*/  erh; } ;
struct TYPE_40__ {scalar_t__ attgenerated; } ;
struct TYPE_39__ {int natts; TYPE_1__* constr; } ;
struct TYPE_38__ {scalar_t__ has_generated_stored; } ;
struct TYPE_37__ {int /*<<< orphan*/  (* func_end ) (TYPE_6__*,TYPE_5__*) ;int /*<<< orphan*/  (* func_beg ) (TYPE_6__*,TYPE_5__*) ;} ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt ;
typedef  TYPE_4__ PLpgSQL_rec ;
typedef  TYPE_5__ PLpgSQL_function ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  HeapTupleData ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_7__ ExpandedRecordHeader ;
typedef  TYPE_8__ ErrorContextCallback ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_GENERATED_STORED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ER_MAGIC ; 
 int PLPGSQL_RC_RETURN ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_32__* FUNC12 (TYPE_2__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_2__*,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 TYPE_8__* error_context_stack ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,int) ; 
 int FUNC23 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC25 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC26 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  plpgsql_exec_error_callback ; 
 TYPE_13__** plpgsql_plugin_ptr ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ) ; 

HeapTuple
FUNC37(PLpgSQL_function *func,
					 TriggerData *trigdata)
{
	PLpgSQL_execstate estate;
	ErrorContextCallback plerrcontext;
	int			rc;
	TupleDesc	tupdesc;
	PLpgSQL_rec *rec_new,
			   *rec_old;
	HeapTuple	rettup;

	/*
	 * Setup the execution state
	 */
	FUNC33(&estate, func, NULL, NULL);
	estate.trigdata = trigdata;

	/*
	 * Setup error traceback support for ereport()
	 */
	plerrcontext.callback = plpgsql_exec_error_callback;
	plerrcontext.arg = &estate;
	plerrcontext.previous = error_context_stack;
	error_context_stack = &plerrcontext;

	/*
	 * Make local execution copies of all the datums
	 */
	estate.err_text = FUNC29("during initialization of execution state");
	FUNC15(&estate, func);

	/*
	 * Put the OLD and NEW tuples into record variables
	 *
	 * We set up expanded records for both variables even though only one may
	 * have a value.  This allows record references to succeed in functions
	 * that are used for multiple trigger types.  For example, we might have a
	 * test like "if (TG_OP = 'INSERT' and NEW.foo = 'xyz')", which should
	 * work regardless of the current trigger type.  If a value is actually
	 * fetched from an unsupplied tuple, it will read as NULL.
	 */
	tupdesc = FUNC3(trigdata->tg_relation);

	rec_new = (PLpgSQL_rec *) (estate.datums[func->new_varno]);
	rec_old = (PLpgSQL_rec *) (estate.datums[func->old_varno]);

	rec_new->erh = FUNC31(tupdesc,
													 estate.datum_context);
	rec_old->erh = FUNC30(rec_new->erh,
													   estate.datum_context);

	if (!FUNC11(trigdata->tg_event))
	{
		/*
		 * Per-statement triggers don't use OLD/NEW variables
		 */
	}
	else if (FUNC9(trigdata->tg_event))
	{
		FUNC28(rec_new->erh, trigdata->tg_trigtuple,
								  false, false);
	}
	else if (FUNC10(trigdata->tg_event))
	{
		FUNC28(rec_new->erh, trigdata->tg_newtuple,
								  false, false);
		FUNC28(rec_old->erh, trigdata->tg_trigtuple,
								  false, false);

		/*
		 * In BEFORE trigger, stored generated columns are not computed yet,
		 * so make them null in the NEW row.  (Only needed in UPDATE branch;
		 * in the INSERT case, they are already null, but in UPDATE, the field
		 * still contains the old value.)  Alternatively, we could construct a
		 * whole new row structure without the generated columns, but this way
		 * seems more efficient and potentially less confusing.
		 */
		if (tupdesc->constr && tupdesc->constr->has_generated_stored &&
			FUNC7(trigdata->tg_event))
		{
			for (int i = 0; i < tupdesc->natts; i++)
				if (FUNC12(tupdesc, i)->attgenerated == ATTRIBUTE_GENERATED_STORED)
					FUNC27(rec_new->erh,
													   i + 1,
													   (Datum) 0,
													   true,	/* isnull */
													   false, false);
		}
	}
	else if (FUNC8(trigdata->tg_event))
	{
		FUNC28(rec_old->erh, trigdata->tg_trigtuple,
								  false, false);
	}
	else
		FUNC17(ERROR, "unrecognized trigger action: not INSERT, DELETE, or UPDATE");

	/* Make transition tables visible to this SPI connection */
	rc = FUNC6(trigdata);
	FUNC0(rc >= 0);

	estate.err_text = FUNC29("during function entry");

	/*
	 * Set the magic variable FOUND to false
	 */
	FUNC22(&estate, false);

	/*
	 * Let the instrumentation plugin peek at this function
	 */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_beg)
		((*plpgsql_plugin_ptr)->func_beg) (&estate, func);

	/*
	 * Now call the toplevel block of statements
	 */
	estate.err_text = NULL;
	estate.err_stmt = (PLpgSQL_stmt *) (func->action);
	rc = FUNC23(&estate, (PLpgSQL_stmt *) func->action);
	if (rc != PLPGSQL_RC_RETURN)
	{
		estate.err_stmt = NULL;
		estate.err_text = NULL;
		FUNC18(ERROR,
				(FUNC19(ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT),
				 FUNC20("control reached end of trigger procedure without RETURN")));
	}

	estate.err_stmt = NULL;
	estate.err_text = FUNC29("during function exit");

	if (estate.retisset)
		FUNC18(ERROR,
				(FUNC19(ERRCODE_DATATYPE_MISMATCH),
				 FUNC20("trigger procedure cannot return a set")));

	/*
	 * Check that the returned tuple structure has the same attributes, the
	 * relation that fired the trigger has. A per-statement trigger always
	 * needs to return NULL, so we ignore any return value the function itself
	 * produces (XXX: is this a good idea?)
	 *
	 * XXX This way it is possible, that the trigger returns a tuple where
	 * attributes don't have the correct atttypmod's length. It's up to the
	 * trigger's programmer to ensure that this doesn't happen. Jan
	 */
	if (estate.retisnull || !FUNC11(trigdata->tg_event))
		rettup = NULL;
	else
	{
		TupleDesc	retdesc;
		TupleConversionMap *tupmap;

		/* We assume exec_stmt_return verified that result is composite */
		FUNC0(*FUNC36(estate.rettype));

		/* We can special-case expanded records for speed */
		if (FUNC13(FUNC2(estate.retval)))
		{
			ExpandedRecordHeader *erh = (ExpandedRecordHeader *) FUNC1(estate.retval);

			FUNC0(erh->er_magic == ER_MAGIC);

			/* Extract HeapTuple and TupleDesc */
			rettup = FUNC26(erh);
			FUNC0(*rettup);
			retdesc = FUNC25(erh);

			if (retdesc != FUNC3(trigdata->tg_relation))
			{
				/* check rowtype compatibility */
				tupmap = FUNC14(retdesc,
													FUNC3(trigdata->tg_relation),
													FUNC29("returned row structure does not match the structure of the triggering table"));
				/* it might need conversion */
				if (tupmap)
					rettup = FUNC24(rettup, tupmap);
				/* no need to free map, we're about to return anyway */
			}

			/*
			 * Copy tuple to upper executor memory.  But if user just did
			 * "return new" or "return old" without changing anything, there's
			 * no need to copy; we can return the original tuple (which will
			 * save a few cycles in trigger.c as well as here).
			 */
			if (rettup != trigdata->tg_newtuple &&
				rettup != trigdata->tg_trigtuple)
				rettup = FUNC5(rettup);
		}
		else
		{
			/* Convert composite datum to a HeapTuple and TupleDesc */
			HeapTupleData tmptup;

			retdesc = FUNC16(estate.retval, &tmptup);
			rettup = &tmptup;

			/* check rowtype compatibility */
			tupmap = FUNC14(retdesc,
												FUNC3(trigdata->tg_relation),
												FUNC29("returned row structure does not match the structure of the triggering table"));
			/* it might need conversion */
			if (tupmap)
				rettup = FUNC24(rettup, tupmap);

			FUNC4(retdesc);
			/* no need to free map, we're about to return anyway */

			/* Copy tuple to upper executor memory */
			rettup = FUNC5(rettup);
		}
	}

	/*
	 * Let the instrumentation plugin peek at this function
	 */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_end)
		((*plpgsql_plugin_ptr)->func_end) (&estate, func);

	/* Clean up any leftover temporary memory */
	FUNC32(&estate);
	FUNC21(&estate);
	/* stmt_mcontext will be destroyed when function's main context is */

	/*
	 * Pop the error context stack
	 */
	error_context_stack = plerrcontext.previous;

	/*
	 * Return the trigger's result
	 */
	return rettup;
}