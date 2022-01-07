
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WhereMaskSet ;
struct TYPE_11__ {struct TYPE_11__* pPrior; int pHaving; int pWhere; int pOrderBy; int pGroupBy; int pEList; TYPE_4__* pSrc; } ;
struct TYPE_10__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_8__ {int pFuncArg; } ;
struct TYPE_7__ {scalar_t__ isTabFunc; } ;
struct TYPE_9__ {TYPE_2__ u1; TYPE_1__ fg; int pOn; TYPE_5__* pSelect; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ Select ;
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
        if( pSrc->a[i].fg.isTabFunc ){
          mask |= sqlite3WhereExprListUsage(pMaskSet, pSrc->a[i].u1.pFuncArg);
        }
      }
    }
    pS = pS->pPrior;
  }
  return mask;
}
