#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int kind; int /*<<< orphan*/  location; int /*<<< orphan*/  rexpr; int /*<<< orphan*/ * lexpr; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ A_Expr ;

/* Variables and functions */
#define  AEXPR_BETWEEN 131 
#define  AEXPR_BETWEEN_SYM 130 
#define  AEXPR_NOT_BETWEEN 129 
#define  AEXPR_NOT_BETWEEN_SYM 128 
 int /*<<< orphan*/  AEXPR_OP ; 
 int /*<<< orphan*/  AEXPR_PAREN ; 
 int /*<<< orphan*/  AND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int List ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OR_EXPR ; 
 int args ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ operator_precedence_warning ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *
FUNC14(ParseState *pstate, A_Expr *a)
{
	Node	   *aexpr;
	Node	   *bexpr;
	Node	   *cexpr;
	Node	   *result;
	Node	   *sub1;
	Node	   *sub2;
	List	   *args;

	/* Deconstruct A_Expr into three subexprs */
	aexpr = a->lexpr;
	args = FUNC1(List, a->rexpr);
	FUNC0(FUNC6(args) == 2);
	bexpr = (Node *) FUNC5(args);
	cexpr = (Node *) FUNC8(args);

	if (operator_precedence_warning)
	{
		int			opgroup;
		const char *opname;

		opgroup = FUNC12((Node *) a, &opname);
		FUNC4(pstate, opgroup, opname,
								 aexpr, cexpr,
								 a->location);
		/* We can ignore bexpr thanks to syntactic restrictions */
		/* Wrap subexpressions to prevent extra warnings */
		aexpr = (Node *) FUNC9(AEXPR_PAREN, NIL, aexpr, NULL, -1);
		bexpr = (Node *) FUNC9(AEXPR_PAREN, NIL, bexpr, NULL, -1);
		cexpr = (Node *) FUNC9(AEXPR_PAREN, NIL, cexpr, NULL, -1);
	}

	/*
	 * Build the equivalent comparison expression.  Make copies of
	 * multiply-referenced subexpressions for safety.  (XXX this is really
	 * wrong since it results in multiple runtime evaluations of what may be
	 * volatile expressions ...)
	 *
	 * Ideally we would not use hard-wired operators here but instead use
	 * opclasses.  However, mixed data types and other issues make this
	 * difficult:
	 * http://archives.postgresql.org/pgsql-hackers/2008-08/msg01142.php
	 */
	switch (a->kind)
	{
		case AEXPR_BETWEEN:
			args = FUNC7(FUNC11(AEXPR_OP, ">=",
											   aexpr, bexpr,
											   a->location),
							  FUNC11(AEXPR_OP, "<=",
											   FUNC2(aexpr), cexpr,
											   a->location));
			result = (Node *) FUNC10(AND_EXPR, args, a->location);
			break;
		case AEXPR_NOT_BETWEEN:
			args = FUNC7(FUNC11(AEXPR_OP, "<",
											   aexpr, bexpr,
											   a->location),
							  FUNC11(AEXPR_OP, ">",
											   FUNC2(aexpr), cexpr,
											   a->location));
			result = (Node *) FUNC10(OR_EXPR, args, a->location);
			break;
		case AEXPR_BETWEEN_SYM:
			args = FUNC7(FUNC11(AEXPR_OP, ">=",
											   aexpr, bexpr,
											   a->location),
							  FUNC11(AEXPR_OP, "<=",
											   FUNC2(aexpr), cexpr,
											   a->location));
			sub1 = (Node *) FUNC10(AND_EXPR, args, a->location);
			args = FUNC7(FUNC11(AEXPR_OP, ">=",
											   FUNC2(aexpr), FUNC2(cexpr),
											   a->location),
							  FUNC11(AEXPR_OP, "<=",
											   FUNC2(aexpr), FUNC2(bexpr),
											   a->location));
			sub2 = (Node *) FUNC10(AND_EXPR, args, a->location);
			args = FUNC7(sub1, sub2);
			result = (Node *) FUNC10(OR_EXPR, args, a->location);
			break;
		case AEXPR_NOT_BETWEEN_SYM:
			args = FUNC7(FUNC11(AEXPR_OP, "<",
											   aexpr, bexpr,
											   a->location),
							  FUNC11(AEXPR_OP, ">",
											   FUNC2(aexpr), cexpr,
											   a->location));
			sub1 = (Node *) FUNC10(OR_EXPR, args, a->location);
			args = FUNC7(FUNC11(AEXPR_OP, "<",
											   FUNC2(aexpr), FUNC2(cexpr),
											   a->location),
							  FUNC11(AEXPR_OP, ">",
											   FUNC2(aexpr), FUNC2(bexpr),
											   a->location));
			sub2 = (Node *) FUNC10(OR_EXPR, args, a->location);
			args = FUNC7(sub1, sub2);
			result = (Node *) FUNC10(AND_EXPR, args, a->location);
			break;
		default:
			FUNC3(ERROR, "unrecognized A_Expr kind: %d", a->kind);
			result = NULL;		/* keep compiler quiet */
			break;
	}

	return FUNC13(pstate, result);
}