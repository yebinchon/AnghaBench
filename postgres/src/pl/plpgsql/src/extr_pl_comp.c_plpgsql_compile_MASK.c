#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* flinfo; } ;
struct TYPE_20__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_data; } ;
struct TYPE_19__ {scalar_t__ fn_xmin; scalar_t__ use_count; int /*<<< orphan*/  fn_tid; } ;
struct TYPE_18__ {void* fn_extra; int /*<<< orphan*/  fn_oid; } ;
typedef  TYPE_2__ PLpgSQL_function ;
typedef  int /*<<< orphan*/  PLpgSQL_func_hashkey ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* FunctionCallInfo ;
typedef  scalar_t__ Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_4__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *) ; 

PLpgSQL_function *
FUNC12(FunctionCallInfo fcinfo, bool forValidator)
{
	Oid			funcOid = fcinfo->flinfo->fn_oid;
	HeapTuple	procTup;
	Form_pg_proc procStruct;
	PLpgSQL_function *function;
	PLpgSQL_func_hashkey hashkey;
	bool		function_valid = false;
	bool		hashkey_valid = false;

	/*
	 * Lookup the pg_proc tuple by Oid; we'll need it in any case
	 */
	procTup = FUNC6(PROCOID, FUNC4(funcOid));
	if (!FUNC2(procTup))
		FUNC10(ERROR, "cache lookup failed for function %u", funcOid);
	procStruct = (Form_pg_proc) FUNC0(procTup);

	/*
	 * See if there's already a cache entry for the current FmgrInfo. If not,
	 * try to find one in the hash table.
	 */
	function = (PLpgSQL_function *) fcinfo->flinfo->fn_extra;

recheck:
	if (!function)
	{
		/* Compute hashkey using function signature and actual arg types */
		FUNC7(fcinfo, procStruct, &hashkey, forValidator);
		hashkey_valid = true;

		/* And do the lookup */
		function = FUNC11(&hashkey);
	}

	if (function)
	{
		/* We have a compiled function, but is it still valid? */
		if (function->fn_xmin == FUNC1(procTup->t_data) &&
			FUNC3(&function->fn_tid, &procTup->t_self))
			function_valid = true;
		else
		{
			/*
			 * Nope, so remove it from hashtable and try to drop associated
			 * storage (if not done already).
			 */
			FUNC8(function);

			/*
			 * If the function isn't in active use then we can overwrite the
			 * func struct with new data, allowing any other existing fn_extra
			 * pointers to make use of the new definition on their next use.
			 * If it is in use then just leave it alone and make a new one.
			 * (The active invocations will run to completion using the
			 * previous definition, and then the cache entry will just be
			 * leaked; doesn't seem worth adding code to clean it up, given
			 * what a corner case this is.)
			 *
			 * If we found the function struct via fn_extra then it's possible
			 * a replacement has already been made, so go back and recheck the
			 * hashtable.
			 */
			if (function->use_count != 0)
			{
				function = NULL;
				if (!hashkey_valid)
					goto recheck;
			}
		}
	}

	/*
	 * If the function wasn't found or was out-of-date, we have to compile it
	 */
	if (!function_valid)
	{
		/*
		 * Calculate hashkey if we didn't already; we'll need it to store the
		 * completed function.
		 */
		if (!hashkey_valid)
			FUNC7(fcinfo, procStruct, &hashkey,
									 forValidator);

		/*
		 * Do the hard part.
		 */
		function = FUNC9(fcinfo, procTup, function,
							  &hashkey, forValidator);
	}

	FUNC5(procTup);

	/*
	 * Save pointer in FmgrInfo to avoid search on subsequent calls
	 */
	fcinfo->flinfo->fn_extra = (void *) function;

	/*
	 * Finally return the compiled function
	 */
	return function;
}