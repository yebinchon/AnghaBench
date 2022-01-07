
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int op; struct TYPE_4__* pLeft; } ;
typedef TYPE_1__ Expr ;


 int EP_FixedDest ;






 int TK_UPLUS ;

 int sqlite3ExprIsConstantNotJoin (TYPE_1__*) ;
 int testcase (int) ;

__attribute__((used)) static int isAppropriateForFactoring(Expr *p){
  if( !sqlite3ExprIsConstantNotJoin(p) ){
    return 0;
  }
  if( (p->flags & EP_FixedDest)==0 ){
    return 1;
  }
  while( p->op==TK_UPLUS ) p = p->pLeft;
  switch( p->op ){

    case 134:

    case 128:
    case 132:
    case 133:
    case 131:
    case 130: {
      testcase( p->op==134 );
      testcase( p->op==128 );
      testcase( p->op==132 );
      testcase( p->op==133 );
      testcase( p->op==131 );
      testcase( p->op==130 );




      return 0;
    }
    case 129: {
      if( p->pLeft->op==133 || p->pLeft->op==132 ){
        return 0;
      }
      break;
    }
    default: {
      break;
    }
  }
  return 1;
}
