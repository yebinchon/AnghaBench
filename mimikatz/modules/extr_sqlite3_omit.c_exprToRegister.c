
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iTable; int op; int op2; } ;
typedef TYPE_1__ Expr ;


 int EP_Skip ;
 int ExprClearProperty (TYPE_1__*,int ) ;
 int TK_REGISTER ;

__attribute__((used)) static void exprToRegister(Expr *p, int iReg){
  p->op2 = p->op;
  p->op = TK_REGISTER;
  p->iTable = iReg;
  ExprClearProperty(p, EP_Skip);
}
