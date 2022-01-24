#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* pList; } ;
struct TYPE_13__ {int /*<<< orphan*/  op; int /*<<< orphan*/  iTable; TYPE_3__ x; struct TYPE_13__* pRight; struct TYPE_13__* pLeft; } ;
struct TYPE_11__ {TYPE_1__* a; } ;
struct TYPE_10__ {TYPE_4__* pExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TK_AND ; 
 int /*<<< orphan*/  TK_GE ; 
 int /*<<< orphan*/  TK_LE ; 
 int /*<<< orphan*/  TK_REGISTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(
  Parse *pParse,    /* Parsing and code generating context */
  Expr *pExpr,      /* The BETWEEN expression */
  int dest,         /* Jump here if the jump is taken */
  int jumpIfTrue,   /* Take the jump if the BETWEEN is true */
  int jumpIfNull    /* Take the jump if the BETWEEN is NULL */
){
  Expr exprAnd;     /* The AND operator in  x>=y AND x<=z  */
  Expr compLeft;    /* The  x>=y  term */
  Expr compRight;   /* The  x<=z  term */
  Expr exprX;       /* The  x  subexpression */
  int regFree1 = 0; /* Temporary use register */

  FUNC1( !FUNC0(pExpr, EP_xIsSelect) );
  exprX = *pExpr->pLeft;
  exprAnd.op = TK_AND;
  exprAnd.pLeft = &compLeft;
  exprAnd.pRight = &compRight;
  compLeft.op = TK_GE;
  compLeft.pLeft = &exprX;
  compLeft.pRight = pExpr->x.pList->a[0].pExpr;
  compRight.op = TK_LE;
  compRight.pLeft = &exprX;
  compRight.pRight = pExpr->x.pList->a[1].pExpr;
  exprX.iTable = FUNC2(pParse, &exprX, &regFree1);
  exprX.op = TK_REGISTER;
  if( jumpIfTrue ){
    FUNC4(pParse, &exprAnd, dest, jumpIfNull);
  }else{
    FUNC3(pParse, &exprAnd, dest, jumpIfNull);
  }
  FUNC5(pParse, regFree1);

  /* Ensure adequate test coverage */
  FUNC6( jumpIfTrue==0 && jumpIfNull==0 && regFree1==0 );
  FUNC6( jumpIfTrue==0 && jumpIfNull==0 && regFree1!=0 );
  FUNC6( jumpIfTrue==0 && jumpIfNull!=0 && regFree1==0 );
  FUNC6( jumpIfTrue==0 && jumpIfNull!=0 && regFree1!=0 );
  FUNC6( jumpIfTrue!=0 && jumpIfNull==0 && regFree1==0 );
  FUNC6( jumpIfTrue!=0 && jumpIfNull==0 && regFree1!=0 );
  FUNC6( jumpIfTrue!=0 && jumpIfNull!=0 && regFree1==0 );
  FUNC6( jumpIfTrue!=0 && jumpIfNull!=0 && regFree1!=0 );
}