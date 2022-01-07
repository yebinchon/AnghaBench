
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int iCur; } ;
struct TYPE_8__ {int eCode; TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
struct TYPE_9__ {int op; int iTable; } ;
typedef TYPE_3__ Expr ;


 int EP_ConstFunc ;
 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_3__*,int ) ;



 int const TK_EXISTS ;



 int const TK_NULL ;
 int const TK_SELECT ;

 int WRC_Abort ;
 int WRC_Continue ;
 int testcase (int) ;

__attribute__((used)) static int exprNodeIsConstant(Walker *pWalker, Expr *pExpr){




  if( pWalker->eCode==2 && ExprHasProperty(pExpr, EP_FromJoin) ){
    pWalker->eCode = 0;
    return WRC_Abort;
  }

  switch( pExpr->op ){



    case 131:
      if( pWalker->eCode>=4 || ExprHasProperty(pExpr,EP_ConstFunc) ){
        return WRC_Continue;
      }else{
        pWalker->eCode = 0;
        return WRC_Abort;
      }
    case 130:
    case 132:
    case 133:
    case 134:
      testcase( pExpr->op==130 );
      testcase( pExpr->op==132 );
      testcase( pExpr->op==133 );
      testcase( pExpr->op==134 );
      if( pWalker->eCode==3 && pExpr->iTable==pWalker->u.iCur ){
        return WRC_Continue;
      }

    case 129:
      testcase( pExpr->op==129 );
      pWalker->eCode = 0;
      return WRC_Abort;
    case 128:
      if( pWalker->eCode==5 ){



        pExpr->op = TK_NULL;
      }else if( pWalker->eCode==4 ){


        pWalker->eCode = 0;
        return WRC_Abort;
      }

    default:
      testcase( pExpr->op==TK_SELECT );
      testcase( pExpr->op==TK_EXISTS );
      return WRC_Continue;
  }
}
