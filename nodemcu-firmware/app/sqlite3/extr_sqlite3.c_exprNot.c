
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pExpr; } ;
typedef int Parse ;
typedef TYPE_1__ ExprSpan ;


 int TK_NOT ;
 int sqlite3PExpr (int *,int ,int ,int ) ;

__attribute__((used)) static void exprNot(Parse *pParse, int doNot, ExprSpan *pSpan){
    if( doNot ){
      pSpan->pExpr = sqlite3PExpr(pParse, TK_NOT, pSpan->pExpr, 0);
    }
  }
