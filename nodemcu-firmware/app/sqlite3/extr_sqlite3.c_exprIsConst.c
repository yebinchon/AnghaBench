
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int w ;
struct TYPE_5__ {int iCur; } ;
struct TYPE_6__ {int eCode; TYPE_1__ u; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Expr ;


 int exprNodeIsConstant ;
 int memset (TYPE_2__*,int ,int) ;
 int selectNodeIsConstant ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static int exprIsConst(Expr *p, int initFlag, int iCur){
  Walker w;
  memset(&w, 0, sizeof(w));
  w.eCode = initFlag;
  w.xExprCallback = exprNodeIsConstant;
  w.xSelectCallback = selectNodeIsConstant;
  w.u.iCur = iCur;
  sqlite3WalkExpr(&w, p);
  return w.eCode;
}
