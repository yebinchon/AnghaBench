#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {int* numParams; scalar_t__** paramTypes; } ;
typedef  TYPE_1__ VarParamState ;
struct TYPE_9__ {scalar_t__ paramkind; scalar_t__ paramtype; int paramid; int location; int paramtypmod; int /*<<< orphan*/  paramcollid; } ;
struct TYPE_8__ {scalar_t__ p_ref_hook_state; } ;
typedef  TYPE_2__ ParseState ;
typedef  TYPE_3__ Param ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_AMBIGUOUS_PARAMETER ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_PARAMETER ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PARAM_EXTERN ; 
 scalar_t__ UNKNOWNOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static Node *
FUNC7(ParseState *pstate, Param *param,
						   Oid targetTypeId, int32 targetTypeMod,
						   int location)
{
	if (param->paramkind == PARAM_EXTERN && param->paramtype == UNKNOWNOID)
	{
		/*
		 * Input is a Param of previously undetermined type, and we want to
		 * update our knowledge of the Param's type.
		 */
		VarParamState *parstate = (VarParamState *) pstate->p_ref_hook_state;
		Oid		   *paramTypes = *parstate->paramTypes;
		int			paramno = param->paramid;

		if (paramno <= 0 ||		/* shouldn't happen, but... */
			paramno > *parstate->numParams)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_UNDEFINED_PARAMETER),
					 FUNC3("there is no parameter $%d", paramno),
					 FUNC6(pstate, param->location)));

		if (paramTypes[paramno - 1] == UNKNOWNOID)
		{
			/* We've successfully resolved the type */
			paramTypes[paramno - 1] = targetTypeId;
		}
		else if (paramTypes[paramno - 1] == targetTypeId)
		{
			/* We previously resolved the type, and it matches */
		}
		else
		{
			/* Oops */
			FUNC0(ERROR,
					(FUNC1(ERRCODE_AMBIGUOUS_PARAMETER),
					 FUNC3("inconsistent types deduced for parameter $%d",
							paramno),
					 FUNC2("%s versus %s",
							   FUNC4(paramTypes[paramno - 1]),
							   FUNC4(targetTypeId)),
					 FUNC6(pstate, param->location)));
		}

		param->paramtype = targetTypeId;

		/*
		 * Note: it is tempting here to set the Param's paramtypmod to
		 * targetTypeMod, but that is probably unwise because we have no
		 * infrastructure that enforces that the value delivered for a Param
		 * will match any particular typmod.  Leaving it -1 ensures that a
		 * run-time length check/coercion will occur if needed.
		 */
		param->paramtypmod = -1;

		/*
		 * This module always sets a Param's collation to be the default for
		 * its datatype.  If that's not what you want, you should be using the
		 * more general parser substitution hooks.
		 */
		param->paramcollid = FUNC5(param->paramtype);

		/* Use the leftmost of the param's and coercion's locations */
		if (location >= 0 &&
			(param->location < 0 || location < param->location))
			param->location = location;

		return (Node *) param;
	}

	/* Else signal to proceed with normal coercion */
	return NULL;
}