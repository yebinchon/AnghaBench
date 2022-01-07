
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wctrlFlags; scalar_t__ iLimit; } ;
typedef TYPE_1__ WhereInfo ;
typedef scalar_t__ LogEst ;


 int WHERE_USE_LIMIT ;
 int assert (int) ;
 scalar_t__ estLog (scalar_t__) ;
 int sqlite3LogEst (int) ;

__attribute__((used)) static LogEst whereSortingCost(
  WhereInfo *pWInfo,
  LogEst nRow,
  int nOrderBy,
  int nSorted
){
  LogEst rScale, rSortCost;
  assert( nOrderBy>0 && 66==sqlite3LogEst(100) );
  rScale = sqlite3LogEst((nOrderBy-nSorted)*100/nOrderBy) - 66;
  rSortCost = nRow + rScale + 16;



  if( (pWInfo->wctrlFlags & WHERE_USE_LIMIT)!=0 && pWInfo->iLimit<nRow ){
    nRow = pWInfo->iLimit;
  }
  rSortCost += estLog(nRow);
  return rSortCost;
}
