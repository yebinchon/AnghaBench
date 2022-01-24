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
typedef  int /*<<< orphan*/  deparse_expr_cxt ;
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  SubscriptingRef ;
typedef  int /*<<< orphan*/  ScalarArrayOpExpr ;
typedef  int /*<<< orphan*/  RelabelType ;
typedef  int /*<<< orphan*/  Param ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  NullTest ;
typedef  int /*<<< orphan*/  FuncExpr ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  DistinctExpr ;
typedef  int /*<<< orphan*/  Const ;
typedef  int /*<<< orphan*/  BoolExpr ;
typedef  int /*<<< orphan*/  ArrayExpr ;
typedef  int /*<<< orphan*/  Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  T_Aggref 140 
#define  T_ArrayExpr 139 
#define  T_BoolExpr 138 
#define  T_Const 137 
#define  T_DistinctExpr 136 
#define  T_FuncExpr 135 
#define  T_NullTest 134 
#define  T_OpExpr 133 
#define  T_Param 132 
#define  T_RelabelType 131 
#define  T_ScalarArrayOpExpr 130 
#define  T_SubscriptingRef 129 
#define  T_Var 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(Expr *node, deparse_expr_cxt *context)
{
	if (node == NULL)
		return;

	switch (FUNC14(node))
	{
		case T_Var:
			FUNC12((Var *) node, context);
			break;
		case T_Const:
			FUNC3((Const *) node, context, 0);
			break;
		case T_Param:
			FUNC8((Param *) node, context);
			break;
		case T_SubscriptingRef:
			FUNC11((SubscriptingRef *) node, context);
			break;
		case T_FuncExpr:
			FUNC5((FuncExpr *) node, context);
			break;
		case T_OpExpr:
			FUNC7((OpExpr *) node, context);
			break;
		case T_DistinctExpr:
			FUNC4((DistinctExpr *) node, context);
			break;
		case T_ScalarArrayOpExpr:
			FUNC10((ScalarArrayOpExpr *) node, context);
			break;
		case T_RelabelType:
			FUNC9((RelabelType *) node, context);
			break;
		case T_BoolExpr:
			FUNC2((BoolExpr *) node, context);
			break;
		case T_NullTest:
			FUNC6((NullTest *) node, context);
			break;
		case T_ArrayExpr:
			FUNC1((ArrayExpr *) node, context);
			break;
		case T_Aggref:
			FUNC0((Aggref *) node, context);
			break;
		default:
			FUNC13(ERROR, "unsupported expression type for deparse: %d",
				 (int) FUNC14(node));
			break;
	}
}