
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int zName; } ;
struct TYPE_14__ {scalar_t__ op; scalar_t__ iColumn; int iTable; } ;
struct TYPE_13__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_12__ {char** azColl; scalar_t__* aiColumn; } ;
struct TYPE_11__ {int pExpr; } ;
typedef int Parse ;
typedef TYPE_2__ Index ;
typedef TYPE_3__ ExprList ;
typedef TYPE_4__ Expr ;
typedef TYPE_5__ CollSeq ;


 scalar_t__ ALWAYS (TYPE_5__*) ;
 scalar_t__ TK_COLUMN ;
 TYPE_5__* sqlite3ExprCollSeq (int *,int ) ;
 TYPE_4__* sqlite3ExprSkipCollate (int ) ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;

__attribute__((used)) static int findIndexCol(
  Parse *pParse,
  ExprList *pList,
  int iBase,
  Index *pIdx,
  int iCol
){
  int i;
  const char *zColl = pIdx->azColl[iCol];

  for(i=0; i<pList->nExpr; i++){
    Expr *p = sqlite3ExprSkipCollate(pList->a[i].pExpr);
    if( p->op==TK_COLUMN
     && p->iColumn==pIdx->aiColumn[iCol]
     && p->iTable==iBase
    ){
      CollSeq *pColl = sqlite3ExprCollSeq(pParse, pList->a[i].pExpr);
      if( ALWAYS(pColl) && 0==sqlite3StrICmp(pColl->zName, zColl) ){
        return i;
      }
    }
  }

  return -1;
}
