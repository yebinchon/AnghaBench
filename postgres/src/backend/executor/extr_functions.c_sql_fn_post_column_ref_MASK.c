#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  location; int /*<<< orphan*/  fields; } ;
struct TYPE_9__ {int /*<<< orphan*/  p_last_srf; int /*<<< orphan*/  p_ref_hook_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  fname; } ;
typedef  TYPE_1__* SQLFunctionParseInfoPtr ;
typedef  TYPE_2__ ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__ ColumnRef ;

/* Variables and functions */
 int /*<<< orphan*/  A_Star ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  String ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC12(ParseState *pstate, ColumnRef *cref, Node *var)
{
	SQLFunctionParseInfoPtr pinfo = (SQLFunctionParseInfoPtr) pstate->p_ref_hook_state;
	int			nnames;
	Node	   *field1;
	Node	   *subfield = NULL;
	const char *name1;
	const char *name2 = NULL;
	Node	   *param;

	/*
	 * Never override a table-column reference.  This corresponds to
	 * considering the parameter names to appear in a scope outside the
	 * individual SQL commands, which is what we want.
	 */
	if (var != NULL)
		return NULL;

	/*----------
	 * The allowed syntaxes are:
	 *
	 * A		A = parameter name
	 * A.B		A = function name, B = parameter name
	 *			OR: A = record-typed parameter name, B = field name
	 *			(the first possibility takes precedence)
	 * A.B.C	A = function name, B = record-typed parameter name,
	 *			C = field name
	 * A.*		Whole-row reference to composite parameter A.
	 * A.B.*	Same, with A = function name, B = parameter name
	 *
	 * Here, it's sufficient to ignore the "*" in the last two cases --- the
	 * main parser will take care of expanding the whole-row reference.
	 *----------
	 */
	nnames = FUNC4(cref->fields);

	if (nnames > 3)
		return NULL;

	if (FUNC1(FUNC6(cref->fields), A_Star))
		nnames--;

	field1 = (Node *) FUNC3(cref->fields);
	FUNC0(FUNC1(field1, String));
	name1 = FUNC10(field1);
	if (nnames > 1)
	{
		subfield = (Node *) FUNC7(cref->fields);
		FUNC0(FUNC1(subfield, String));
		name2 = FUNC10(subfield);
	}

	if (nnames == 3)
	{
		/*
		 * Three-part name: if the first part doesn't match the function name,
		 * we can fail immediately. Otherwise, look up the second part, and
		 * take the third part to be a field reference.
		 */
		if (FUNC11(name1, pinfo->fname) != 0)
			return NULL;

		param = FUNC9(pinfo, name2, cref->location);

		subfield = (Node *) FUNC8(cref->fields);
		FUNC0(FUNC1(subfield, String));
	}
	else if (nnames == 2 && FUNC11(name1, pinfo->fname) == 0)
	{
		/*
		 * Two-part name with first part matching function name: first see if
		 * second part matches any parameter name.
		 */
		param = FUNC9(pinfo, name2, cref->location);

		if (param)
		{
			/* Yes, so this is a parameter reference, no subfield */
			subfield = NULL;
		}
		else
		{
			/* No, so try to match as parameter name and subfield */
			param = FUNC9(pinfo, name1, cref->location);
		}
	}
	else
	{
		/* Single name, or parameter name followed by subfield */
		param = FUNC9(pinfo, name1, cref->location);
	}

	if (!param)
		return NULL;			/* No match */

	if (subfield)
	{
		/*
		 * Must be a reference to a field of a composite parameter; otherwise
		 * ParseFuncOrColumn will return NULL, and we'll fail back at the
		 * caller.
		 */
		param = FUNC2(pstate,
								  FUNC5(subfield),
								  FUNC5(param),
								  pstate->p_last_srf,
								  NULL,
								  false,
								  cref->location);
	}

	return param;
}