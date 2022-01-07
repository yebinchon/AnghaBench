
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* pList; } ;
struct TYPE_13__ {int op; int iTable; TYPE_3__ x; struct TYPE_13__* pRight; struct TYPE_13__* pLeft; } ;
struct TYPE_11__ {TYPE_1__* a; } ;
struct TYPE_10__ {TYPE_4__* pExpr; } ;
typedef int Parse ;
typedef TYPE_4__ Expr ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_4__*,int ) ;
 int TK_AND ;
 int TK_GE ;
 int TK_LE ;
 int TK_REGISTER ;
 int assert (int) ;
 int sqlite3ExprCodeTemp (int *,TYPE_4__*,int*) ;
 int sqlite3ExprIfFalse (int *,TYPE_4__*,int,int) ;
 int sqlite3ExprIfTrue (int *,TYPE_4__*,int,int) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void exprCodeBetween(
  Parse *pParse,
  Expr *pExpr,
  int dest,
  int jumpIfTrue,
  int jumpIfNull
){
  Expr exprAnd;
  Expr compLeft;
  Expr compRight;
  Expr exprX;
  int regFree1 = 0;

  assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
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
  exprX.iTable = sqlite3ExprCodeTemp(pParse, &exprX, &regFree1);
  exprX.op = TK_REGISTER;
  if( jumpIfTrue ){
    sqlite3ExprIfTrue(pParse, &exprAnd, dest, jumpIfNull);
  }else{
    sqlite3ExprIfFalse(pParse, &exprAnd, dest, jumpIfNull);
  }
  sqlite3ReleaseTempReg(pParse, regFree1);


  testcase( jumpIfTrue==0 && jumpIfNull==0 && regFree1==0 );
  testcase( jumpIfTrue==0 && jumpIfNull==0 && regFree1!=0 );
  testcase( jumpIfTrue==0 && jumpIfNull!=0 && regFree1==0 );
  testcase( jumpIfTrue==0 && jumpIfNull!=0 && regFree1!=0 );
  testcase( jumpIfTrue!=0 && jumpIfNull==0 && regFree1==0 );
  testcase( jumpIfTrue!=0 && jumpIfNull==0 && regFree1!=0 );
  testcase( jumpIfTrue!=0 && jumpIfNull!=0 && regFree1==0 );
  testcase( jumpIfTrue!=0 && jumpIfNull!=0 && regFree1!=0 );
}
