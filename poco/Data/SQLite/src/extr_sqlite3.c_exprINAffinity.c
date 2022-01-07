
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* pSelect; } ;
struct TYPE_18__ {int flags; scalar_t__ op; TYPE_1__ x; struct TYPE_18__* pLeft; } ;
struct TYPE_17__ {int db; } ;
struct TYPE_16__ {TYPE_3__* pEList; } ;
struct TYPE_15__ {TYPE_2__* a; } ;
struct TYPE_14__ {int pExpr; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ Expr ;


 int EP_xIsSelect ;
 scalar_t__ TK_IN ;
 int assert (int) ;
 char sqlite3CompareAffinity (int ,char) ;
 char* sqlite3DbMallocRaw (int ,int) ;
 char sqlite3ExprAffinity (TYPE_6__*) ;
 int sqlite3ExprVectorSize (TYPE_6__*) ;
 TYPE_6__* sqlite3VectorFieldSubexpr (TYPE_6__*,int) ;

__attribute__((used)) static char *exprINAffinity(Parse *pParse, Expr *pExpr){
  Expr *pLeft = pExpr->pLeft;
  int nVal = sqlite3ExprVectorSize(pLeft);
  Select *pSelect = (pExpr->flags & EP_xIsSelect) ? pExpr->x.pSelect : 0;
  char *zRet;

  assert( pExpr->op==TK_IN );
  zRet = sqlite3DbMallocRaw(pParse->db, nVal+1);
  if( zRet ){
    int i;
    for(i=0; i<nVal; i++){
      Expr *pA = sqlite3VectorFieldSubexpr(pLeft, i);
      char a = sqlite3ExprAffinity(pA);
      if( pSelect ){
        zRet[i] = sqlite3CompareAffinity(pSelect->pEList->a[i].pExpr, a);
      }else{
        zRet[i] = a;
      }
    }
    zRet[nVal] = '\0';
  }
  return zRet;
}
