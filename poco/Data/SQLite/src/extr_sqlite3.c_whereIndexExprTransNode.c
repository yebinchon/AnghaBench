
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* pIdxTrans; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_9__ {scalar_t__ pTab; } ;
struct TYPE_13__ {TYPE_1__ y; int iColumn; int iTable; int op; } ;
struct TYPE_12__ {int iIdxCol; int iIdxCur; int iTabCur; int pIdxExpr; } ;
typedef TYPE_4__ IdxExprTrans ;
typedef TYPE_5__ Expr ;


 int TK_COLUMN ;
 int WRC_Continue ;
 int WRC_Prune ;
 scalar_t__ sqlite3ExprCompare (int ,TYPE_5__*,int ,int ) ;

__attribute__((used)) static int whereIndexExprTransNode(Walker *p, Expr *pExpr){
  IdxExprTrans *pX = p->u.pIdxTrans;
  if( sqlite3ExprCompare(0, pExpr, pX->pIdxExpr, pX->iTabCur)==0 ){
    pExpr->op = TK_COLUMN;
    pExpr->iTable = pX->iIdxCur;
    pExpr->iColumn = pX->iIdxCol;
    pExpr->y.pTab = 0;
    return WRC_Prune;
  }else{
    return WRC_Continue;
  }
}
