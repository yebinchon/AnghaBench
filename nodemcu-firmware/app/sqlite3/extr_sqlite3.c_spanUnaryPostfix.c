
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t n; int * z; } ;
typedef TYPE_1__ Token ;
struct TYPE_6__ {int * zEnd; int pExpr; } ;
typedef int Parse ;
typedef TYPE_2__ ExprSpan ;


 int sqlite3PExpr (int *,int,int ,int ) ;

__attribute__((used)) static void spanUnaryPostfix(
    Parse *pParse,
    int op,
    ExprSpan *pOperand,
    Token *pPostOp
  ){
    pOperand->pExpr = sqlite3PExpr(pParse, op, pOperand->pExpr, 0);
    pOperand->zEnd = &pPostOp->z[pPostOp->n];
  }
