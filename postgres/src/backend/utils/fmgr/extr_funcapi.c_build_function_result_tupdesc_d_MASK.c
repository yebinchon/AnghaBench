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
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ OIDOID ; 
 char PROARGMODE_IN ; 
 char PROARGMODE_INOUT ; 
 char PROARGMODE_OUT ; 
 char PROARGMODE_TABLE ; 
 char PROARGMODE_VARIADIC ; 
 char PROKIND_PROCEDURE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ TEXTOID ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int,int,char,scalar_t__**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (int) ; 
 char* FUNC14 (char*,int) ; 

TupleDesc
FUNC15(char prokind,
								Datum proallargtypes,
								Datum proargmodes,
								Datum proargnames)
{
	TupleDesc	desc;
	ArrayType  *arr;
	int			numargs;
	Oid		   *argtypes;
	char	   *argmodes;
	Datum	   *argnames = NULL;
	Oid		   *outargtypes;
	char	  **outargnames;
	int			numoutargs;
	int			nargnames;
	int			i;

	/* Can't have output args if columns are null */
	if (proallargtypes == FUNC8(NULL) ||
		proargmodes == FUNC8(NULL))
		return NULL;

	/*
	 * We expect the arrays to be 1-D arrays of the right types; verify that.
	 * For the OID and char arrays, we don't need to use deconstruct_array()
	 * since the array data is just going to look like a C array of values.
	 */
	arr = FUNC7(proallargtypes);	/* ensure not toasted */
	numargs = FUNC1(arr)[0];
	if (FUNC4(arr) != 1 ||
		numargs < 0 ||
		FUNC3(arr) ||
		FUNC2(arr) != OIDOID)
		FUNC12(ERROR, "proallargtypes is not a 1-D Oid array");
	argtypes = (Oid *) FUNC0(arr);
	arr = FUNC7(proargmodes);	/* ensure not toasted */
	if (FUNC4(arr) != 1 ||
		FUNC1(arr)[0] != numargs ||
		FUNC3(arr) ||
		FUNC2(arr) != CHAROID)
		FUNC12(ERROR, "proargmodes is not a 1-D char array");
	argmodes = (char *) FUNC0(arr);
	if (proargnames != FUNC8(NULL))
	{
		arr = FUNC7(proargnames);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numargs ||
			FUNC3(arr) ||
			FUNC2(arr) != TEXTOID)
			FUNC12(ERROR, "proargnames is not a 1-D text array");
		FUNC11(arr, TEXTOID, -1, false, 'i',
						  &argnames, NULL, &nargnames);
		FUNC5(nargnames == numargs);
	}

	/* zero elements probably shouldn't happen, but handle it gracefully */
	if (numargs <= 0)
		return NULL;

	/* extract output-argument types and names */
	outargtypes = (Oid *) FUNC13(numargs * sizeof(Oid));
	outargnames = (char **) FUNC13(numargs * sizeof(char *));
	numoutargs = 0;
	for (i = 0; i < numargs; i++)
	{
		char	   *pname;

		if (argmodes[i] == PROARGMODE_IN ||
			argmodes[i] == PROARGMODE_VARIADIC)
			continue;
		FUNC5(argmodes[i] == PROARGMODE_OUT ||
			   argmodes[i] == PROARGMODE_INOUT ||
			   argmodes[i] == PROARGMODE_TABLE);
		outargtypes[numoutargs] = argtypes[i];
		if (argnames)
			pname = FUNC9(argnames[i]);
		else
			pname = NULL;
		if (pname == NULL || pname[0] == '\0')
		{
			/* Parameter is not named, so gin up a column name */
			pname = FUNC14("column%d", numoutargs + 1);
		}
		outargnames[numoutargs] = pname;
		numoutargs++;
	}

	/*
	 * If there is no output argument, or only one, the function does not
	 * return tuples.
	 */
	if (numoutargs < 2 && prokind != PROKIND_PROCEDURE)
		return NULL;

	desc = FUNC6(numoutargs);
	for (i = 0; i < numoutargs; i++)
	{
		FUNC10(desc, i + 1,
						   outargnames[i],
						   outargtypes[i],
						   -1,
						   0);
	}

	return desc;
}