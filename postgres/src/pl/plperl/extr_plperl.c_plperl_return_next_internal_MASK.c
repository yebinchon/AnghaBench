#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  result_typioparam; int /*<<< orphan*/  result_in_func; scalar_t__ result_oid; scalar_t__ fn_retistuple; int /*<<< orphan*/  fn_retisset; } ;
typedef  TYPE_2__ plperl_proc_desc ;
typedef  scalar_t__ TypeFuncClass ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_16__ {scalar_t__ tmp_cxt; scalar_t__ ret_tdesc; scalar_t__ tuple_store; int /*<<< orphan*/  cdomain_info; int /*<<< orphan*/  cdomain_oid; TYPE_5__* fcinfo; TYPE_2__* prodesc; } ;
struct TYPE_15__ {scalar_t__ resultinfo; } ;
struct TYPE_14__ {int allowedModes; TYPE_1__* econtext; TYPE_3__* expectedDesc; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_11__ {scalar_t__ ecxt_per_query_memory; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_4__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_5__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int SFRM_Materialize_Random ; 
 scalar_t__ SVt_PVHV ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ; 
 TYPE_9__* current_call_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__,int,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC19 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC22(SV *sv)
{
	plperl_proc_desc *prodesc;
	FunctionCallInfo fcinfo;
	ReturnSetInfo *rsi;
	MemoryContext old_cxt;

	if (!sv)
		return;

	prodesc = current_call_data->prodesc;
	fcinfo = current_call_data->fcinfo;
	rsi = (ReturnSetInfo *) fcinfo->resultinfo;

	if (!prodesc->fn_retisset)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_SYNTAX_ERROR),
				 FUNC15("cannot use return_next in a non-SETOF function")));

	if (!current_call_data->ret_tdesc)
	{
		TupleDesc	tupdesc;

		FUNC1(!current_call_data->tuple_store);

		/*
		 * This is the first call to return_next in the current PL/Perl
		 * function call, so identify the output tuple type and create a
		 * tuplestore to hold the result rows.
		 */
		if (prodesc->fn_retistuple)
		{
			TypeFuncClass funcclass;
			Oid			typid;

			funcclass = FUNC16(fcinfo, &typid, &tupdesc);
			if (funcclass != TYPEFUNC_COMPOSITE &&
				funcclass != TYPEFUNC_COMPOSITE_DOMAIN)
				FUNC13(ERROR,
						(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC15("function returning record called in context "
								"that cannot accept type record")));
			/* if domain-over-composite, remember the domain's type OID */
			if (funcclass == TYPEFUNC_COMPOSITE_DOMAIN)
				current_call_data->cdomain_oid = typid;
		}
		else
		{
			tupdesc = rsi->expectedDesc;
			/* Protect assumption below that we return exactly one column */
			if (tupdesc == NULL || tupdesc->natts != 1)
				FUNC12(ERROR, "expected single-column result descriptor for non-composite SETOF result");
		}

		/*
		 * Make sure the tuple_store and ret_tdesc are sufficiently
		 * long-lived.
		 */
		old_cxt = FUNC5(rsi->econtext->ecxt_per_query_memory);

		current_call_data->ret_tdesc = FUNC2(tupdesc);
		current_call_data->tuple_store =
			FUNC19(rsi->allowedModes & SFRM_Materialize_Random,
								  false, work_mem);

		FUNC5(old_cxt);
	}

	/*
	 * Producing the tuple we want to return requires making plenty of
	 * palloc() allocations that are not cleaned up. Since this function can
	 * be called many times before the current memory context is reset, we
	 * need to do those allocations in a temporary context.
	 */
	if (!current_call_data->tmp_cxt)
	{
		current_call_data->tmp_cxt =
			FUNC0(CurrentMemoryContext,
								  "PL/Perl return_next temporary cxt",
								  ALLOCSET_DEFAULT_SIZES);
	}

	old_cxt = FUNC5(current_call_data->tmp_cxt);

	if (prodesc->fn_retistuple)
	{
		HeapTuple	tuple;

		if (!(FUNC7(sv) && FUNC8(sv) && FUNC10(FUNC9(sv)) == SVt_PVHV))
			FUNC13(ERROR,
					(FUNC14(ERRCODE_DATATYPE_MISMATCH),
					 FUNC15("SETOF-composite-returning PL/Perl function "
							"must call return_next with reference to hash")));

		tuple = FUNC17((HV *) FUNC9(sv),
										  current_call_data->ret_tdesc);

		if (FUNC6(current_call_data->cdomain_oid))
			FUNC11(FUNC3(tuple), false,
						 current_call_data->cdomain_oid,
						 &current_call_data->cdomain_info,
						 rsi->econtext->ecxt_per_query_memory);

		FUNC20(current_call_data->tuple_store, tuple);
	}
	else if (prodesc->result_oid)
	{
		Datum		ret[1];
		bool		isNull[1];

		ret[0] = FUNC18(sv,
									prodesc->result_oid,
									-1,
									fcinfo,
									&prodesc->result_in_func,
									prodesc->result_typioparam,
									&isNull[0]);

		FUNC21(current_call_data->tuple_store,
							 current_call_data->ret_tdesc,
							 ret, isNull);
	}

	FUNC5(old_cxt);
	FUNC4(current_call_data->tmp_cxt);
}