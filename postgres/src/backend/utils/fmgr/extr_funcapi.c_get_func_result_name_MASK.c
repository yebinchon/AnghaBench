#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_proc_proargmodes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargnames ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char PROARGMODE_IN ; 
 char PROARGMODE_INOUT ; 
 char PROARGMODE_OUT ; 
 char PROARGMODE_TABLE ; 
 char PROARGMODE_VARIADIC ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ TEXTOID ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

char *
FUNC16(Oid functionId)
{
	char	   *result;
	HeapTuple	procTuple;
	Datum		proargmodes;
	Datum		proargnames;
	bool		isnull;
	ArrayType  *arr;
	int			numargs;
	char	   *argmodes;
	Datum	   *argnames;
	int			numoutargs;
	int			nargnames;
	int			i;

	/* First fetch the function's pg_proc row */
	procTuple = FUNC10(PROCOID, FUNC8(functionId));
	if (!FUNC7(procTuple))
		FUNC14(ERROR, "cache lookup failed for function %u", functionId);

	/* If there are no named OUT parameters, return NULL */
	if (FUNC15(procTuple, Anum_pg_proc_proargmodes, NULL) ||
		FUNC15(procTuple, Anum_pg_proc_proargnames, NULL))
		result = NULL;
	else
	{
		/* Get the data out of the tuple */
		proargmodes = FUNC11(PROCOID, procTuple,
									  Anum_pg_proc_proargmodes,
									  &isnull);
		FUNC5(!isnull);
		proargnames = FUNC11(PROCOID, procTuple,
									  Anum_pg_proc_proargnames,
									  &isnull);
		FUNC5(!isnull);

		/*
		 * We expect the arrays to be 1-D arrays of the right types; verify
		 * that.  For the char array, we don't need to use deconstruct_array()
		 * since the array data is just going to look like a C array of
		 * values.
		 */
		arr = FUNC6(proargmodes);	/* ensure not toasted */
		numargs = FUNC1(arr)[0];
		if (FUNC4(arr) != 1 ||
			numargs < 0 ||
			FUNC3(arr) ||
			FUNC2(arr) != CHAROID)
			FUNC14(ERROR, "proargmodes is not a 1-D char array");
		argmodes = (char *) FUNC0(arr);
		arr = FUNC6(proargnames);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numargs ||
			FUNC3(arr) ||
			FUNC2(arr) != TEXTOID)
			FUNC14(ERROR, "proargnames is not a 1-D text array");
		FUNC13(arr, TEXTOID, -1, false, 'i',
						  &argnames, NULL, &nargnames);
		FUNC5(nargnames == numargs);

		/* scan for output argument(s) */
		result = NULL;
		numoutargs = 0;
		for (i = 0; i < numargs; i++)
		{
			if (argmodes[i] == PROARGMODE_IN ||
				argmodes[i] == PROARGMODE_VARIADIC)
				continue;
			FUNC5(argmodes[i] == PROARGMODE_OUT ||
				   argmodes[i] == PROARGMODE_INOUT ||
				   argmodes[i] == PROARGMODE_TABLE);
			if (++numoutargs > 1)
			{
				/* multiple out args, so forget it */
				result = NULL;
				break;
			}
			result = FUNC12(argnames[i]);
			if (result == NULL || result[0] == '\0')
			{
				/* Parameter is not named, so forget it */
				result = NULL;
				break;
			}
		}
	}

	FUNC9(procTuple);

	return result;
}