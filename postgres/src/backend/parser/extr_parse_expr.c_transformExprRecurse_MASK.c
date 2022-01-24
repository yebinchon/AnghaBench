#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XmlSerialize ;
typedef  int /*<<< orphan*/  XmlExpr ;
typedef  int /*<<< orphan*/  Value ;
typedef  int /*<<< orphan*/  TypeCast ;
struct TYPE_18__ {int /*<<< orphan*/  location; int /*<<< orphan*/  val; } ;
struct TYPE_17__ {int kind; int /*<<< orphan*/ * lexpr; } ;
struct TYPE_16__ {int /*<<< orphan*/ * arg; } ;
struct TYPE_15__ {int /*<<< orphan*/ * arg; int /*<<< orphan*/  argisrow; int /*<<< orphan*/  location; } ;
struct TYPE_14__ {int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/  SubLink ;
typedef  TYPE_1__ SetToDefault ;
typedef  int /*<<< orphan*/  SQLValueFunction ;
typedef  int /*<<< orphan*/  RowExpr ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParamRef ;
typedef  TYPE_2__ NullTest ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__ NamedArgExpr ;
typedef  int /*<<< orphan*/  MultiAssignRef ;
typedef  int /*<<< orphan*/  MinMaxExpr ;
typedef  int /*<<< orphan*/  GroupingFunc ;
typedef  int /*<<< orphan*/  FuncCall ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  CurrentOfExpr ;
typedef  int /*<<< orphan*/  ColumnRef ;
typedef  int /*<<< orphan*/  CollateClause ;
typedef  int /*<<< orphan*/  CoalesceExpr ;
typedef  int /*<<< orphan*/  CaseExpr ;
typedef  int /*<<< orphan*/  BooleanTest ;
typedef  int /*<<< orphan*/  BoolExpr ;
typedef  int /*<<< orphan*/  A_Indirection ;
typedef  TYPE_4__ A_Expr ;
typedef  TYPE_5__ A_Const ;
typedef  int /*<<< orphan*/  A_ArrayExpr ;

/* Variables and functions */
#define  AEXPR_BETWEEN 170 
#define  AEXPR_BETWEEN_SYM 169 
#define  AEXPR_DISTINCT 168 
#define  AEXPR_ILIKE 167 
#define  AEXPR_IN 166 
#define  AEXPR_LIKE 165 
#define  AEXPR_NOT_BETWEEN 164 
#define  AEXPR_NOT_BETWEEN_SYM 163 
#define  AEXPR_NOT_DISTINCT 162 
#define  AEXPR_NULLIF 161 
#define  AEXPR_OF 160 
#define  AEXPR_OP 159 
#define  AEXPR_OP_ALL 158 
#define  AEXPR_OP_ANY 157 
#define  AEXPR_PAREN 156 
#define  AEXPR_SIMILAR 155 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  PREC_GROUP_POSTFIX_IS ; 
#define  T_A_ArrayExpr 154 
#define  T_A_Const 153 
#define  T_A_Expr 152 
#define  T_A_Indirection 151 
#define  T_BoolExpr 150 
#define  T_BooleanTest 149 
#define  T_CaseExpr 148 
#define  T_CaseTestExpr 147 
#define  T_CoalesceExpr 146 
#define  T_CollateClause 145 
#define  T_ColumnRef 144 
#define  T_CurrentOfExpr 143 
#define  T_FuncCall 142 
#define  T_GroupingFunc 141 
#define  T_MinMaxExpr 140 
#define  T_MultiAssignRef 139 
#define  T_NamedArgExpr 138 
#define  T_NullTest 137 
#define  T_ParamRef 136 
#define  T_RowExpr 135 
#define  T_SQLValueFunction 134 
#define  T_SetToDefault 133 
#define  T_SubLink 132 
#define  T_TypeCast 131 
#define  T_Var 130 
#define  T_XmlExpr 129 
#define  T_XmlSerialize 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  operator_precedence_warning ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC39(ParseState *pstate, Node *expr)
{
	Node	   *result;

	if (expr == NULL)
		return NULL;

	/* Guard against stack overflow due to overly complex expressions */
	FUNC0();

	switch (FUNC8(expr))
	{
		case T_ColumnRef:
			result = FUNC24(pstate, (ColumnRef *) expr);
			break;

		case T_ParamRef:
			result = FUNC31(pstate, (ParamRef *) expr);
			break;

		case T_A_Const:
			{
				A_Const    *con = (A_Const *) expr;
				Value	   *val = &con->val;

				result = (Node *) FUNC7(pstate, val, con->location);
				break;
			}

		case T_A_Indirection:
			result = FUNC28(pstate, (A_Indirection *) expr);
			break;

		case T_A_ArrayExpr:
			result = FUNC18(pstate, (A_ArrayExpr *) expr,
										InvalidOid, InvalidOid, -1);
			break;

		case T_TypeCast:
			result = FUNC35(pstate, (TypeCast *) expr);
			break;

		case T_CollateClause:
			result = FUNC23(pstate, (CollateClause *) expr);
			break;

		case T_A_Expr:
			{
				A_Expr	   *a = (A_Expr *) expr;

				switch (a->kind)
				{
					case AEXPR_OP:
						result = FUNC15(pstate, a);
						break;
					case AEXPR_OP_ANY:
						result = FUNC17(pstate, a);
						break;
					case AEXPR_OP_ALL:
						result = FUNC16(pstate, a);
						break;
					case AEXPR_DISTINCT:
					case AEXPR_NOT_DISTINCT:
						result = FUNC11(pstate, a);
						break;
					case AEXPR_NULLIF:
						result = FUNC13(pstate, a);
						break;
					case AEXPR_OF:
						result = FUNC14(pstate, a);
						break;
					case AEXPR_IN:
						result = FUNC12(pstate, a);
						break;
					case AEXPR_LIKE:
					case AEXPR_ILIKE:
					case AEXPR_SIMILAR:
						/* we can transform these just like AEXPR_OP */
						result = FUNC15(pstate, a);
						break;
					case AEXPR_BETWEEN:
					case AEXPR_NOT_BETWEEN:
					case AEXPR_BETWEEN_SYM:
					case AEXPR_NOT_BETWEEN_SYM:
						result = FUNC10(pstate, a);
						break;
					case AEXPR_PAREN:
						result = FUNC39(pstate, a->lexpr);
						break;
					default:
						FUNC1(ERROR, "unrecognized A_Expr kind: %d", a->kind);
						result = NULL;	/* keep compiler quiet */
						break;
				}
				break;
			}

		case T_BoolExpr:
			result = FUNC19(pstate, (BoolExpr *) expr);
			break;

		case T_FuncCall:
			result = FUNC26(pstate, (FuncCall *) expr);
			break;

		case T_MultiAssignRef:
			result = FUNC30(pstate, (MultiAssignRef *) expr);
			break;

		case T_GroupingFunc:
			result = FUNC27(pstate, (GroupingFunc *) expr);
			break;

		case T_NamedArgExpr:
			{
				NamedArgExpr *na = (NamedArgExpr *) expr;

				na->arg = (Expr *) FUNC39(pstate, (Node *) na->arg);
				result = expr;
				break;
			}

		case T_SubLink:
			result = FUNC34(pstate, (SubLink *) expr);
			break;

		case T_CaseExpr:
			result = FUNC21(pstate, (CaseExpr *) expr);
			break;

		case T_RowExpr:
			result = FUNC32(pstate, (RowExpr *) expr, false);
			break;

		case T_CoalesceExpr:
			result = FUNC22(pstate, (CoalesceExpr *) expr);
			break;

		case T_MinMaxExpr:
			result = FUNC29(pstate, (MinMaxExpr *) expr);
			break;

		case T_SQLValueFunction:
			result = FUNC33(pstate,
											   (SQLValueFunction *) expr);
			break;

		case T_XmlExpr:
			result = FUNC36(pstate, (XmlExpr *) expr);
			break;

		case T_XmlSerialize:
			result = FUNC37(pstate, (XmlSerialize *) expr);
			break;

		case T_NullTest:
			{
				NullTest   *n = (NullTest *) expr;

				if (operator_precedence_warning)
					FUNC2(pstate, PREC_GROUP_POSTFIX_IS, "IS",
											 (Node *) n->arg, NULL,
											 n->location);

				n->arg = (Expr *) FUNC39(pstate, (Node *) n->arg);
				/* the argument can be any type, so don't coerce it */
				n->argisrow = FUNC38(FUNC6((Node *) n->arg));
				result = expr;
				break;
			}

		case T_BooleanTest:
			result = FUNC20(pstate, (BooleanTest *) expr);
			break;

		case T_CurrentOfExpr:
			result = FUNC25(pstate, (CurrentOfExpr *) expr);
			break;

			/*
			 * In all places where DEFAULT is legal, the caller should have
			 * processed it rather than passing it to transformExpr().
			 */
		case T_SetToDefault:
			FUNC3(ERROR,
					(FUNC4(ERRCODE_SYNTAX_ERROR),
					 FUNC5("DEFAULT is not allowed in this context"),
					 FUNC9(pstate,
										((SetToDefault *) expr)->location)));
			break;

			/*
			 * CaseTestExpr doesn't require any processing; it is only
			 * injected into parse trees in a fully-formed state.
			 *
			 * Ordinarily we should not see a Var here, but it is convenient
			 * for transformJoinUsingClause() to create untransformed operator
			 * trees containing already-transformed Vars.  The best
			 * alternative would be to deconstruct and reconstruct column
			 * references, which seems expensively pointless.  So allow it.
			 */
		case T_CaseTestExpr:
		case T_Var:
			{
				result = (Node *) expr;
				break;
			}

		default:
			/* should not reach here */
			FUNC1(ERROR, "unrecognized node type: %d", (int) FUNC8(expr));
			result = NULL;		/* keep compiler quiet */
			break;
	}

	return result;
}