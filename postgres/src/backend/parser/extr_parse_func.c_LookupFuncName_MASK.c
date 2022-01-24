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
typedef  int /*<<< orphan*/  List ;
typedef  int FuncLookupError ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_AMBIGUOUS_FUNCTION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
#define  FUNCLOOKUP_AMBIGUOUS 129 
#define  FUNCLOOKUP_NOSUCHFUNC 128 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

Oid
FUNC8(List *funcname, int nargs, const Oid *argtypes, bool missing_ok)
{
	Oid			funcoid;
	FuncLookupError lookupError;

	funcoid = FUNC0(funcname, nargs, argtypes, missing_ok,
									 &lookupError);

	if (FUNC2(funcoid))
		return funcoid;

	switch (lookupError)
	{
		case FUNCLOOKUP_NOSUCHFUNC:
			/* Let the caller deal with it when missing_ok is true */
			if (missing_ok)
				return InvalidOid;

			if (nargs < 0)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC6("could not find a function named \"%s\"",
								FUNC1(funcname))));
			else
				FUNC3(ERROR,
						(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC6("function %s does not exist",
								FUNC7(funcname, nargs,
													  NIL, argtypes))));
			break;

		case FUNCLOOKUP_AMBIGUOUS:
			/* Raise an error regardless of missing_ok */
			FUNC3(ERROR,
					(FUNC4(ERRCODE_AMBIGUOUS_FUNCTION),
					 FUNC6("function name \"%s\" is not unique",
							FUNC1(funcname)),
					 FUNC5("Specify the argument list to select the function unambiguously.")));
			break;
	}

	return InvalidOid;			/* Keep compiler quiet */
}