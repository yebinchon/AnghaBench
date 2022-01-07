
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ i16 ;
struct TYPE_11__ {TYPE_2__* pList; } ;
struct TYPE_12__ {scalar_t__ op; struct TYPE_12__* pRight; struct TYPE_12__* pLeft; TYPE_3__ x; scalar_t__ iRightJoinTable; } ;
struct TYPE_10__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_9__ {TYPE_4__* pExpr; } ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 int EP_NoReduce ;
 int EP_Reduced ;
 int EP_TokenOnly ;
 int ExprHasProperty (TYPE_4__*,int) ;
 int ExprSetProperty (TYPE_4__*,int ) ;
 int ExprSetVVAProperty (TYPE_4__*,int ) ;
 scalar_t__ TK_FUNCTION ;
 int assert (int) ;

__attribute__((used)) static void setJoinExpr(Expr *p, int iTable){
  while( p ){
    ExprSetProperty(p, EP_FromJoin);
    assert( !ExprHasProperty(p, EP_TokenOnly|EP_Reduced) );
    ExprSetVVAProperty(p, EP_NoReduce);
    p->iRightJoinTable = (i16)iTable;
    if( p->op==TK_FUNCTION && p->x.pList ){
      int i;
      for(i=0; i<p->x.pList->nExpr; i++){
        setJoinExpr(p->x.pList->a[i].pExpr, iTable);
      }
    }
    setJoinExpr(p->pLeft, iTable);
    p = p->pRight;
  }
}
