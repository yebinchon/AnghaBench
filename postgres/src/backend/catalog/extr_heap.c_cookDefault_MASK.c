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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 int /*<<< orphan*/  COERCION_ASSIGNMENT ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXPR_KIND_COLUMN_DEFAULT ; 
 int /*<<< orphan*/  EXPR_KIND_GENERATED_COLUMN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Node *
FUNC14(ParseState *pstate,
			Node *raw_default,
			Oid atttypid,
			int32 atttypmod,
			const char *attname,
			char attgenerated)
{
	Node	   *expr;

	FUNC0(raw_default != NULL);

	/*
	 * Transform raw parsetree to executable expression.
	 */
	expr = FUNC13(pstate, raw_default, attgenerated ? EXPR_KIND_GENERATED_COLUMN : EXPR_KIND_COLUMN_DEFAULT);

	if (attgenerated)
	{
		FUNC3(pstate, expr);

		if (FUNC5(expr))
			FUNC7(ERROR,
					(FUNC8(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC10("generation expression is not immutable")));
	}
	else
	{
		/*
		 * For a default expression, transformExpr() should have rejected
		 * column references.
		 */
		FUNC0(!FUNC6(expr));
	}

	/*
	 * Coerce the expression to the correct type and typmod, if given. This
	 * should match the parser's processing of non-defaulted expressions ---
	 * see transformAssignedExpr().
	 */
	if (FUNC1(atttypid))
	{
		Oid			type_id = FUNC11(expr);

		expr = FUNC4(pstate, expr, type_id,
									 atttypid, atttypmod,
									 COERCION_ASSIGNMENT,
									 COERCE_IMPLICIT_CAST,
									 -1);
		if (expr == NULL)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_DATATYPE_MISMATCH),
					 FUNC10("column \"%s\" is of type %s"
							" but default expression is of type %s",
							attname,
							FUNC12(atttypid),
							FUNC12(type_id)),
					 FUNC9("You will need to rewrite or cast the expression.")));
	}

	/*
	 * Finally, take care of collations in the finished expression.
	 */
	FUNC2(pstate, expr);

	return expr;
}