
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
struct TYPE_8__ {scalar_t__ op; int op2; } ;
typedef TYPE_3__ Expr ;


 scalar_t__ TK_AGG_FUNCTION ;
 int WRC_Continue ;

__attribute__((used)) static int incrAggDepth(Walker *pWalker, Expr *pExpr){
  if( pExpr->op==TK_AGG_FUNCTION ) pExpr->op2 += pWalker->u.i;
  return WRC_Continue;
}
