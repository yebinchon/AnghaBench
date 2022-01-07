
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_7__ {int nMem; int * pVdbe; } ;
struct TYPE_6__ {int nOBSat; scalar_t__ pDeferredRowLoad; } ;
typedef TYPE_1__ SortCtx ;
typedef int Select ;
typedef TYPE_2__ Parse ;


 int OP_MakeRecord ;
 int innerLoopLoadRow (TYPE_2__*,int *,scalar_t__) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;

__attribute__((used)) static int makeSorterRecord(
  Parse *pParse,
  SortCtx *pSort,
  Select *pSelect,
  int regBase,
  int nBase
){
  int nOBSat = pSort->nOBSat;
  Vdbe *v = pParse->pVdbe;
  int regOut = ++pParse->nMem;
  if( pSort->pDeferredRowLoad ){
    innerLoopLoadRow(pParse, pSelect, pSort->pDeferredRowLoad);
  }
  sqlite3VdbeAddOp3(v, OP_MakeRecord, regBase+nOBSat, nBase-nOBSat, regOut);
  return regOut;
}
