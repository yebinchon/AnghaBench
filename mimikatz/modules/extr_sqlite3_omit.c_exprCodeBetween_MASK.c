#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* pList; } ;
struct TYPE_20__ {int /*<<< orphan*/  flags; TYPE_3__ x; struct TYPE_20__* pRight; struct TYPE_20__* pLeft; int /*<<< orphan*/  op; } ;
struct TYPE_18__ {TYPE_1__* a; } ;
struct TYPE_17__ {TYPE_4__* pExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TK_AND ; 
 int /*<<< orphan*/  TK_GE ; 
 int /*<<< orphan*/  TK_LE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 void FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 void FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(
  Parse *pParse,    /* Parsing and code generating context */
  Expr *pExpr,      /* The BETWEEN expression */
  int dest,         /* Jump destination or storage location */
  void (*xJump)(Parse*,Expr*,int,int), /* Action to take */
  int jumpIfNull    /* Take the jump if the BETWEEN is NULL */
){
 Expr exprAnd;     /* The AND operator in  x>=y AND x<=z  */
  Expr compLeft;    /* The  x>=y  term */
  Expr compRight;   /* The  x<=z  term */
  Expr exprX;       /* The  x  subexpression */
  int regFree1 = 0; /* Temporary use register */

  FUNC5(&compLeft, 0, sizeof(Expr));
  FUNC5(&compRight, 0, sizeof(Expr));
  FUNC5(&exprAnd, 0, sizeof(Expr));

  FUNC1( !FUNC0(pExpr, EP_xIsSelect) );
  FUNC3(&exprX, pExpr->pLeft);
  exprAnd.op = TK_AND;
  exprAnd.pLeft = &compLeft;
  exprAnd.pRight = &compRight;
  compLeft.op = TK_GE;
  compLeft.pLeft = &exprX;
  compLeft.pRight = pExpr->x.pList->a[0].pExpr;
  compRight.op = TK_LE;
  compRight.pLeft = &exprX;
  compRight.pRight = pExpr->x.pList->a[1].pExpr;
  FUNC4(&exprX, FUNC2(pParse, &exprX, &regFree1));
  if( xJump ){
    xJump(pParse, &exprAnd, dest, jumpIfNull);
  }else{
    /* Mark the expression is being from the ON or USING clause of a join
    ** so that the sqlite3ExprCodeTarget() routine will not attempt to move
    ** it into the Parse.pConstExpr list.  We should use a new bit for this,
    ** for clarity, but we are out of bits in the Expr.flags field so we
    ** have to reuse the EP_FromJoin bit.  Bummer. */
    exprX.flags |= EP_FromJoin;
    FUNC6(pParse, &exprAnd, dest);
  }
  FUNC9(pParse, regFree1);

  /* Ensure adequate test coverage */
  FUNC10( xJump==sqlite3ExprIfTrue  && jumpIfNull==0 && regFree1==0 );
  FUNC10( xJump==sqlite3ExprIfTrue  && jumpIfNull==0 && regFree1!=0 );
  FUNC10( xJump==sqlite3ExprIfTrue  && jumpIfNull!=0 && regFree1==0 );
  FUNC10( xJump==sqlite3ExprIfTrue  && jumpIfNull!=0 && regFree1!=0 );
  FUNC10( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1==0 );
  FUNC10( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1!=0 );
  FUNC10( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1==0 );
  FUNC10( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1!=0 );
  FUNC10( xJump==0 );
}