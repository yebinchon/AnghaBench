
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pIdxCover; } ;
struct TYPE_9__ {int eCode; TYPE_2__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_10__ {scalar_t__ op; scalar_t__ iTable; int iColumn; } ;
struct TYPE_7__ {scalar_t__ iCur; int pIdx; } ;
typedef TYPE_4__ Expr ;


 scalar_t__ TK_COLUMN ;
 int WRC_Abort ;
 int WRC_Continue ;
 scalar_t__ sqlite3ColumnOfIndex (int ,int ) ;

__attribute__((used)) static int exprIdxCover(Walker *pWalker, Expr *pExpr){
  if( pExpr->op==TK_COLUMN
   && pExpr->iTable==pWalker->u.pIdxCover->iCur
   && sqlite3ColumnOfIndex(pWalker->u.pIdxCover->pIdx, pExpr->iColumn)<0
  ){
    pWalker->eCode = 1;
    return WRC_Abort;
  }
  return WRC_Continue;
}
