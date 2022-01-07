
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WhereMaskSet ;
struct TYPE_7__ {struct TYPE_7__* pPrior; int pHaving; int pWhere; int pOrderBy; int pGroupBy; int pEList; TYPE_2__* pSrc; } ;
struct TYPE_6__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_5__ {int pOn; TYPE_3__* pSelect; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Select ;
typedef int Bitmask ;


 scalar_t__ ALWAYS (int) ;
 int sqlite3WhereExprListUsage (int *,int ) ;
 int sqlite3WhereExprUsage (int *,int ) ;

__attribute__((used)) static Bitmask exprSelectUsage(WhereMaskSet *pMaskSet, Select *pS){
  Bitmask mask = 0;
  while( pS ){
    SrcList *pSrc = pS->pSrc;
    mask |= sqlite3WhereExprListUsage(pMaskSet, pS->pEList);
    mask |= sqlite3WhereExprListUsage(pMaskSet, pS->pGroupBy);
    mask |= sqlite3WhereExprListUsage(pMaskSet, pS->pOrderBy);
    mask |= sqlite3WhereExprUsage(pMaskSet, pS->pWhere);
    mask |= sqlite3WhereExprUsage(pMaskSet, pS->pHaving);
    if( ALWAYS(pSrc!=0) ){
      int i;
      for(i=0; i<pSrc->nSrc; i++){
        mask |= exprSelectUsage(pMaskSet, pSrc->a[i].pSelect);
        mask |= sqlite3WhereExprUsage(pMaskSet, pSrc->a[i].pOn);
      }
    }
    pS = pS->pPrior;
  }
  return mask;
}
