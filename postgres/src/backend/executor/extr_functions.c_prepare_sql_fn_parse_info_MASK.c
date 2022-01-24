#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  values; } ;
struct TYPE_7__ {int pronargs; TYPE_1__ proargtypes; int /*<<< orphan*/  proname; } ;
struct TYPE_6__ {int nargs; scalar_t__* argtypes; int /*<<< orphan*/ * argnames; scalar_t__ collation; int /*<<< orphan*/  fname; } ;
typedef  TYPE_2__* SQLFunctionParseInfoPtr ;
typedef  int /*<<< orphan*/  SQLFunctionParseInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_proc_proargmodes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargnames ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCNAMEARGSNSP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

SQLFunctionParseInfoPtr
FUNC15(HeapTuple procedureTuple,
						  Node *call_expr,
						  Oid inputCollation)
{
	SQLFunctionParseInfoPtr pinfo;
	Form_pg_proc procedureStruct = (Form_pg_proc) FUNC0(procedureTuple);
	int			nargs;

	pinfo = (SQLFunctionParseInfoPtr) FUNC13(sizeof(SQLFunctionParseInfo));

	/* Function's name (only) can be used to qualify argument names */
	pinfo->fname = FUNC14(FUNC2(procedureStruct->proname));

	/* Save the function's input collation */
	pinfo->collation = inputCollation;

	/*
	 * Copy input argument types from the pg_proc entry, then resolve any
	 * polymorphic types.
	 */
	pinfo->nargs = nargs = procedureStruct->pronargs;
	if (nargs > 0)
	{
		Oid		   *argOidVect;
		int			argnum;

		argOidVect = (Oid *) FUNC12(nargs * sizeof(Oid));
		FUNC11(argOidVect,
			   procedureStruct->proargtypes.values,
			   nargs * sizeof(Oid));

		for (argnum = 0; argnum < nargs; argnum++)
		{
			Oid			argtype = argOidVect[argnum];

			if (FUNC1(argtype))
			{
				argtype = FUNC9(call_expr, argnum);
				if (argtype == InvalidOid)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_DATATYPE_MISMATCH),
							 FUNC7("could not determine actual type of argument declared %s",
									FUNC8(argOidVect[argnum]))));
				argOidVect[argnum] = argtype;
			}
		}

		pinfo->argtypes = argOidVect;
	}

	/*
	 * Collect names of arguments, too, if any
	 */
	if (nargs > 0)
	{
		Datum		proargnames;
		Datum		proargmodes;
		int			n_arg_names;
		bool		isNull;

		proargnames = FUNC4(PROCNAMEARGSNSP, procedureTuple,
									  Anum_pg_proc_proargnames,
									  &isNull);
		if (isNull)
			proargnames = FUNC3(NULL);	/* just to be sure */

		proargmodes = FUNC4(PROCNAMEARGSNSP, procedureTuple,
									  Anum_pg_proc_proargmodes,
									  &isNull);
		if (isNull)
			proargmodes = FUNC3(NULL);	/* just to be sure */

		n_arg_names = FUNC10(proargnames, proargmodes,
											   &pinfo->argnames);

		/* Paranoia: ignore the result if too few array entries */
		if (n_arg_names < nargs)
			pinfo->argnames = NULL;
	}
	else
		pinfo->argnames = NULL;

	return pinfo;
}