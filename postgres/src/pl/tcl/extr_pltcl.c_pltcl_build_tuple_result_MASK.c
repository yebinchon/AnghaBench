#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* prodesc; TYPE_1__* trigdata; int /*<<< orphan*/ * attinmeta; TYPE_4__* ret_tupdesc; } ;
typedef  TYPE_3__ pltcl_call_state ;
typedef  TYPE_4__* TupleDesc ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_15__ {scalar_t__ attgenerated; } ;
struct TYPE_14__ {int natts; } ;
struct TYPE_12__ {int /*<<< orphan*/  fn_cxt; int /*<<< orphan*/  domain_info; int /*<<< orphan*/  result_typid; scalar_t__ fn_retisdomain; } ;
struct TYPE_11__ {int /*<<< orphan*/  tg_relation; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_ERROR_NOATTRIBUTE ; 
 int FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HeapTuple
FUNC15(Tcl_Interp *interp, Tcl_Obj **kvObjv, int kvObjc,
						 pltcl_call_state *call_state)
{
	HeapTuple	tuple;
	TupleDesc	tupdesc;
	AttInMetadata *attinmeta;
	char	  **values;
	int			i;

	if (call_state->ret_tupdesc)
	{
		tupdesc = call_state->ret_tupdesc;
		attinmeta = call_state->attinmeta;
	}
	else if (call_state->trigdata)
	{
		tupdesc = FUNC2(call_state->trigdata->tg_relation);
		attinmeta = FUNC6(tupdesc);
	}
	else
	{
		FUNC8(ERROR, "PL/Tcl function does not return a tuple");
		tupdesc = NULL;			/* keep compiler quiet */
		attinmeta = NULL;
	}

	values = (char **) FUNC12(tupdesc->natts * sizeof(char *));

	if (kvObjc % 2 != 0)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC11("column name/value list must have even number of elements")));

	for (i = 0; i < kvObjc; i += 2)
	{
		char	   *fieldName = FUNC14(FUNC4(kvObjv[i]));
		int			attn = FUNC3(tupdesc, fieldName);

		/*
		 * We silently ignore ".tupno", if it's present but doesn't match any
		 * actual output column.  This allows direct use of a row returned by
		 * pltcl_set_tuple_values().
		 */
		if (attn == SPI_ERROR_NOATTRIBUTE)
		{
			if (FUNC13(fieldName, ".tupno") == 0)
				continue;
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_COLUMN),
					 FUNC11("column name/value list contains nonexistent column name \"%s\"",
							fieldName)));
		}

		if (attn <= 0)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC11("cannot set system attribute \"%s\"",
							fieldName)));

		if (FUNC5(tupdesc, attn - 1)->attgenerated)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
					 FUNC11("cannot set generated column \"%s\"",
							fieldName)));

		values[attn - 1] = FUNC14(FUNC4(kvObjv[i + 1]));
	}

	tuple = FUNC0(attinmeta, values);

	/* if result type is domain-over-composite, check domain constraints */
	if (call_state->prodesc->fn_retisdomain)
		FUNC7(FUNC1(tuple), false,
					 call_state->prodesc->result_typid,
					 &call_state->prodesc->domain_info,
					 call_state->prodesc->fn_cxt);

	return tuple;
}