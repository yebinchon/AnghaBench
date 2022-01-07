
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zEnd; int pExpr; } ;
typedef int Parse ;
typedef TYPE_1__ ExprSpan ;


 int sqlite3PExpr (int *,int,int ,int ) ;

__attribute__((used)) static void spanBinaryExpr(
    Parse *pParse,
    int op,
    ExprSpan *pLeft,
    ExprSpan *pRight
  ){
    pLeft->pExpr = sqlite3PExpr(pParse, op, pLeft->pExpr, pRight->pExpr);
    pLeft->zEnd = pRight->zEnd;
  }
