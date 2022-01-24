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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ FuncDetailCode ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 scalar_t__ ANYOID ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNCDETAIL_NORMAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int,int,scalar_t__*,scalar_t__*,int*,int*,scalar_t__*,scalar_t__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC12(List *fnName,
					int nargs,
					Oid *input_types,
					Oid variadicArgType,
					Oid *rettype)
{
	Oid			fnOid;
	bool		retset;
	int			nvargs;
	Oid			vatype;
	Oid		   *true_oid_array;
	FuncDetailCode fdresult;
	AclResult	aclresult;
	int			i;

	/*
	 * func_get_detail looks up the function in the catalogs, does
	 * disambiguation for polymorphic functions, handles inheritance, and
	 * returns the funcid and type and set or singleton status of the
	 * function's return value.  it also returns the true argument types to
	 * the function.
	 */
	fdresult = FUNC8(fnName, NIL, NIL,
							   nargs, input_types, false, false,
							   &fnOid, rettype, &retset,
							   &nvargs, &vatype,
							   &true_oid_array, NULL);

	/* only valid case is a normal function not returning a set */
	if (fdresult != FUNCDETAIL_NORMAL || !FUNC2(fnOid))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC7("function %s does not exist",
						FUNC9(fnName, nargs,
											  NIL, input_types))));
	if (retset)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_DATATYPE_MISMATCH),
				 FUNC7("function %s returns a set",
						FUNC9(fnName, nargs,
											  NIL, input_types))));

	/*
	 * If the agg is declared to take VARIADIC ANY, the underlying functions
	 * had better be declared that way too, else they may receive too many
	 * parameters; but func_get_detail would have been happy with plain ANY.
	 * (Probably nothing very bad would happen, but it wouldn't work as the
	 * user expects.)  Other combinations should work without any special
	 * pushups, given that we told func_get_detail not to expand VARIADIC.
	 */
	if (variadicArgType == ANYOID && vatype != ANYOID)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_DATATYPE_MISMATCH),
				 FUNC7("function %s must accept VARIADIC ANY to be used in this aggregate",
						FUNC9(fnName, nargs,
											  NIL, input_types))));

	/*
	 * If there are any polymorphic types involved, enforce consistency, and
	 * possibly refine the result type.  It's OK if the result is still
	 * polymorphic at this point, though.
	 */
	*rettype = FUNC4(input_types,
												true_oid_array,
												nargs,
												*rettype,
												true);

	/*
	 * func_get_detail will find functions requiring run-time argument type
	 * coercion, but nodeAgg.c isn't prepared to deal with that
	 */
	for (i = 0; i < nargs; i++)
	{
		if (!FUNC1(input_types[i], true_oid_array[i]))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_DATATYPE_MISMATCH),
					 FUNC7("function %s requires run-time type coercion",
							FUNC9(fnName, nargs,
												  NIL, true_oid_array))));
	}

	/* Check aggregate creator has permission to call the function */
	aclresult = FUNC11(fnOid, FUNC0(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_FUNCTION, FUNC10(fnOid));

	return fnOid;
}