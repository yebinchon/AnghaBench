#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pronamespace; int /*<<< orphan*/  provariadic; int /*<<< orphan*/  proname; } ;
typedef  scalar_t__ ParseExprKind ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ FuncDetailCode ;
typedef  TYPE_1__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EXPR_KIND_GROUP_BY ; 
 scalar_t__ FUNCDETAIL_AGGREGATE ; 
 scalar_t__ FUNCDETAIL_NORMAL ; 
 scalar_t__ FUNCDETAIL_NOTFOUND ; 
 scalar_t__ FUNCDETAIL_WINDOWFUNC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int,int,scalar_t__*,scalar_t__*,int*,int*,scalar_t__*,scalar_t__**,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static char *
FUNC15(Oid funcid, int nargs, List *argnames, Oid *argtypes,
					   bool has_variadic, bool *use_variadic_p,
					   ParseExprKind special_exprkind)
{
	char	   *result;
	HeapTuple	proctup;
	Form_pg_proc procform;
	char	   *proname;
	bool		use_variadic;
	char	   *nspname;
	FuncDetailCode p_result;
	Oid			p_funcid;
	Oid			p_rettype;
	bool		p_retset;
	int			p_nvargs;
	Oid			p_vatype;
	Oid		   *p_true_typeids;
	bool		force_qualify = false;

	proctup = FUNC7(PROCOID, FUNC4(funcid));
	if (!FUNC2(proctup))
		FUNC8(ERROR, "cache lookup failed for function %u", funcid);
	procform = (Form_pg_proc) FUNC1(proctup);
	proname = FUNC3(procform->proname);

	/*
	 * Due to parser hacks to avoid needing to reserve CUBE, we need to force
	 * qualification in some special cases.
	 */
	if (special_exprkind == EXPR_KIND_GROUP_BY)
	{
		if (FUNC14(proname, "cube") == 0 || FUNC14(proname, "rollup") == 0)
			force_qualify = true;
	}

	/*
	 * Determine whether VARIADIC should be printed.  We must do this first
	 * since it affects the lookup rules in func_get_detail().
	 *
	 * We always print VARIADIC if the function has a merged variadic-array
	 * argument.  Note that this is always the case for functions taking a
	 * VARIADIC argument type other than VARIADIC ANY.  If we omitted VARIADIC
	 * and printed the array elements as separate arguments, the call could
	 * match a newer non-VARIADIC function.
	 */
	if (use_variadic_p)
	{
		/* Parser should not have set funcvariadic unless fn is variadic */
		FUNC0(!has_variadic || FUNC5(procform->provariadic));
		use_variadic = has_variadic;
		*use_variadic_p = use_variadic;
	}
	else
	{
		FUNC0(!has_variadic);
		use_variadic = false;
	}

	/*
	 * The idea here is to schema-qualify only if the parser would fail to
	 * resolve the correct function given the unqualified func name with the
	 * specified argtypes and VARIADIC flag.  But if we already decided to
	 * force qualification, then we can skip the lookup and pretend we didn't
	 * find it.
	 */
	if (!force_qualify)
		p_result = FUNC9(FUNC11(FUNC12(proname)),
								   NIL, argnames, nargs, argtypes,
								   !use_variadic, true,
								   &p_funcid, &p_rettype,
								   &p_retset, &p_nvargs, &p_vatype,
								   &p_true_typeids, NULL);
	else
	{
		p_result = FUNCDETAIL_NOTFOUND;
		p_funcid = InvalidOid;
	}

	if ((p_result == FUNCDETAIL_NORMAL ||
		 p_result == FUNCDETAIL_AGGREGATE ||
		 p_result == FUNCDETAIL_WINDOWFUNC) &&
		p_funcid == funcid)
		nspname = NULL;
	else
		nspname = FUNC10(procform->pronamespace);

	result = FUNC13(nspname, proname);

	FUNC6(proctup);

	return result;
}