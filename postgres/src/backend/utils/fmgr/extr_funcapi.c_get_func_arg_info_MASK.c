#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dim1; int /*<<< orphan*/  values; } ;
struct TYPE_4__ {int pronargs; TYPE_1__ proargtypes; } ;
typedef  char Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_proc_proallargtypes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargmodes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargnames ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int) ; 

int
FUNC14(HeapTuple procTup,
				  Oid **p_argtypes, char ***p_argnames, char **p_argmodes)
{
	Form_pg_proc procStruct = (Form_pg_proc) FUNC7(procTup);
	Datum		proallargtypes;
	Datum		proargmodes;
	Datum		proargnames;
	bool		isNull;
	ArrayType  *arr;
	int			numargs;
	Datum	   *elems;
	int			nelems;
	int			i;

	/* First discover the total number of parameters and get their types */
	proallargtypes = FUNC8(PROCOID, procTup,
									 Anum_pg_proc_proallargtypes,
									 &isNull);
	if (!isNull)
	{
		/*
		 * We expect the arrays to be 1-D arrays of the right types; verify
		 * that.  For the OID and char arrays, we don't need to use
		 * deconstruct_array() since the array data is just going to look like
		 * a C array of values.
		 */
		arr = FUNC6(proallargtypes);	/* ensure not toasted */
		numargs = FUNC1(arr)[0];
		if (FUNC4(arr) != 1 ||
			numargs < 0 ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC11(ERROR, "proallargtypes is not a 1-D Oid array");
		FUNC5(numargs >= procStruct->pronargs);
		*p_argtypes = (Oid *) FUNC13(numargs * sizeof(Oid));
		FUNC12(*p_argtypes, FUNC0(arr),
			   numargs * sizeof(Oid));
	}
	else
	{
		/* If no proallargtypes, use proargtypes */
		numargs = procStruct->proargtypes.dim1;
		FUNC5(numargs == procStruct->pronargs);
		*p_argtypes = (Oid *) FUNC13(numargs * sizeof(Oid));
		FUNC12(*p_argtypes, procStruct->proargtypes.values,
			   numargs * sizeof(Oid));
	}

	/* Get argument names, if available */
	proargnames = FUNC8(PROCOID, procTup,
								  Anum_pg_proc_proargnames,
								  &isNull);
	if (isNull)
		*p_argnames = NULL;
	else
	{
		FUNC10(FUNC6(proargnames),
						  TEXTOID, -1, false, 'i',
						  &elems, NULL, &nelems);
		if (nelems != numargs)	/* should not happen */
			FUNC11(ERROR, "proargnames must have the same number of elements as the function has arguments");
		*p_argnames = (char **) FUNC13(sizeof(char *) * numargs);
		for (i = 0; i < numargs; i++)
			(*p_argnames)[i] = FUNC9(elems[i]);
	}

	/* Get argument modes, if available */
	proargmodes = FUNC8(PROCOID, procTup,
								  Anum_pg_proc_proargmodes,
								  &isNull);
	if (isNull)
		*p_argmodes = NULL;
	else
	{
		arr = FUNC6(proargmodes);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numargs ||
			FUNC3(arr) ||
			FUNC2(arr) != CHAROID)
			FUNC11(ERROR, "proargmodes is not a 1-D char array");
		*p_argmodes = (char *) FUNC13(numargs * sizeof(char));
		FUNC12(*p_argmodes, FUNC0(arr),
			   numargs * sizeof(char));
	}

	return numargs;
}