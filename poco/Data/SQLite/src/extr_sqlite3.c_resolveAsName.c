
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* zToken; } ;
struct TYPE_10__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_9__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_8__ {char* zName; } ;
typedef int Parse ;
typedef TYPE_3__ ExprList ;
typedef TYPE_4__ Expr ;


 scalar_t__ TK_ID ;
 int UNUSED_PARAMETER (int *) ;
 scalar_t__ sqlite3StrICmp (char*,char*) ;

__attribute__((used)) static int resolveAsName(
  Parse *pParse,
  ExprList *pEList,
  Expr *pE
){
  int i;

  UNUSED_PARAMETER(pParse);

  if( pE->op==TK_ID ){
    char *zCol = pE->u.zToken;
    for(i=0; i<pEList->nExpr; i++){
      char *zAs = pEList->a[i].zName;
      if( zAs!=0 && sqlite3StrICmp(zAs, zCol)==0 ){
        return i+1;
      }
    }
  }
  return 0;
}
