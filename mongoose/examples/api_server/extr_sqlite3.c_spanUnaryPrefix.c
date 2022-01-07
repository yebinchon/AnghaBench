
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z; } ;
typedef TYPE_1__ Token ;
struct TYPE_7__ {int zEnd; int zStart; int pExpr; } ;
typedef int Parse ;
typedef TYPE_2__ ExprSpan ;


 int sqlite3PExpr (int *,int,int ,int ,int ) ;

__attribute__((used)) static void spanUnaryPrefix(
    ExprSpan *pOut,
    Parse *pParse,
    int op,
    ExprSpan *pOperand,
    Token *pPreOp
  ){
    pOut->pExpr = sqlite3PExpr(pParse, op, pOperand->pExpr, 0, 0);
    pOut->zStart = pPreOp->z;
    pOut->zEnd = pOperand->zEnd;
  }
