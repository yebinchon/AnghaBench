
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int WhereMaskSet ;
struct TYPE_3__ {int wctrlFlags; int aStatic; int a; int nSlot; scalar_t__ nTerm; scalar_t__ pOuter; int * pMaskSet; int * pParse; } ;
typedef TYPE_1__ WhereClause ;
typedef int Parse ;


 int ArraySize (int ) ;

__attribute__((used)) static void whereClauseInit(
  WhereClause *pWC,
  Parse *pParse,
  WhereMaskSet *pMaskSet,
  u16 wctrlFlags
){
  pWC->pParse = pParse;
  pWC->pMaskSet = pMaskSet;
  pWC->pOuter = 0;
  pWC->nTerm = 0;
  pWC->nSlot = ArraySize(pWC->aStatic);
  pWC->a = pWC->aStatic;
  pWC->wctrlFlags = wctrlFlags;
}
