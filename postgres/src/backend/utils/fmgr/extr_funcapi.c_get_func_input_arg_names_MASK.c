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
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 char PROARGMODE_IN ; 
 char PROARGMODE_INOUT ; 
 char PROARGMODE_VARIADIC ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ TEXTOID ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int,char,scalar_t__**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int) ; 

int
FUNC11(Datum proargnames, Datum proargmodes,
						 char ***arg_names)
{
	ArrayType  *arr;
	int			numargs;
	Datum	   *argnames;
	char	   *argmodes;
	char	  **inargnames;
	int			numinargs;
	int			i;

	/* Do nothing if null proargnames */
	if (proargnames == FUNC6(NULL))
	{
		*arg_names = NULL;
		return 0;
	}

	/*
	 * We expect the arrays to be 1-D arrays of the right types; verify that.
	 * For proargmodes, we don't need to use deconstruct_array() since the
	 * array data is just going to look like a C array of values.
	 */
	arr = FUNC5(proargnames);	/* ensure not toasted */
	if (FUNC4(arr) != 1 ||
		FUNC3(arr) ||
		FUNC2(arr) != TEXTOID)
		FUNC9(ERROR, "proargnames is not a 1-D text array");
	FUNC8(arr, TEXTOID, -1, false, 'i',
					  &argnames, NULL, &numargs);
	if (proargmodes != FUNC6(NULL))
	{
		arr = FUNC5(proargmodes);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numargs ||
			FUNC3(arr) ||
			FUNC2(arr) != CHAROID)
			FUNC9(ERROR, "proargmodes is not a 1-D char array");
		argmodes = (char *) FUNC0(arr);
	}
	else
		argmodes = NULL;

	/* zero elements probably shouldn't happen, but handle it gracefully */
	if (numargs <= 0)
	{
		*arg_names = NULL;
		return 0;
	}

	/* extract input-argument names */
	inargnames = (char **) FUNC10(numargs * sizeof(char *));
	numinargs = 0;
	for (i = 0; i < numargs; i++)
	{
		if (argmodes == NULL ||
			argmodes[i] == PROARGMODE_IN ||
			argmodes[i] == PROARGMODE_INOUT ||
			argmodes[i] == PROARGMODE_VARIADIC)
		{
			char	   *pname = FUNC7(argnames[i]);

			if (pname[0] != '\0')
				inargnames[numinargs] = pname;
			else
				inargnames[numinargs] = NULL;
			numinargs++;
		}
	}

	*arg_names = inargnames;
	return numinargs;
}