
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int iOrderByCol; } ;
struct TYPE_20__ {TYPE_2__ x; } ;
struct ExprList_item {scalar_t__ zSpan; scalar_t__ zName; TYPE_3__ u; } ;
typedef int Vdbe ;
struct TYPE_25__ {int nExpr; } ;
struct TYPE_24__ {int nMem; int nTab; int * pVdbe; } ;
struct TYPE_23__ {int iOffset; TYPE_1__* pEList; } ;
struct TYPE_22__ {int eDest; int iSDParm; int iSdst; int zAffSdst; } ;
struct TYPE_21__ {int labelDone; int labelBkOut; int regReturn; int iECursor; int nOBSat; int sortFlags; TYPE_8__* pOrderBy; } ;
struct TYPE_18__ {struct ExprList_item* a; } ;
typedef TYPE_4__ SortCtx ;
typedef TYPE_5__ SelectDest ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ ExprList ;


 int OPFLAG_APPEND ;
 int OP_Column ;
 int OP_Gosub ;
 int OP_IdxInsert ;
 int OP_Insert ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_Once ;
 int OP_OpenPseudo ;
 int OP_ResultRow ;
 int OP_Return ;
 int OP_Sort ;
 int OP_SorterData ;
 int OP_SorterNext ;
 int OP_SorterSort ;
 int OP_Yield ;
 int SORTFLAG_UseSorter ;
 int SRT_Coroutine ;


 int SRT_Output ;


 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int codeOffset (int *,int ,int) ;
 int sqlite3ExprCacheAffinityChange (TYPE_7__*,int,int) ;
 int sqlite3GetTempRange (TYPE_7__*,int) ;
 int sqlite3GetTempReg (TYPE_7__*) ;
 int sqlite3ReleaseTempRange (TYPE_7__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_7__*,int) ;
 int sqlite3Strlen30 (int ) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,int ,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void generateSortTail(
  Parse *pParse,
  Select *p,
  SortCtx *pSort,
  int nColumn,
  SelectDest *pDest
){
  Vdbe *v = pParse->pVdbe;
  int addrBreak = pSort->labelDone;
  int addrContinue = sqlite3VdbeMakeLabel(v);
  int addr;
  int addrOnce = 0;
  int iTab;
  ExprList *pOrderBy = pSort->pOrderBy;
  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;
  int regRow;
  int regRowid;
  int iCol;
  int nKey;
  int iSortTab;
  int nSortData;
  int i;
  int bSeq;
  struct ExprList_item *aOutEx = p->pEList->a;

  assert( addrBreak<0 );
  if( pSort->labelBkOut ){
    sqlite3VdbeAddOp2(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    sqlite3VdbeGoto(v, addrBreak);
    sqlite3VdbeResolveLabel(v, pSort->labelBkOut);
  }
  iTab = pSort->iECursor;
  if( eDest==SRT_Output || eDest==SRT_Coroutine || eDest==130 ){
    regRowid = 0;
    regRow = pDest->iSdst;
    nSortData = nColumn;
  }else{
    regRowid = sqlite3GetTempReg(pParse);
    regRow = sqlite3GetTempRange(pParse, nColumn);
    nSortData = nColumn;
  }
  nKey = pOrderBy->nExpr - pSort->nOBSat;
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    int regSortOut = ++pParse->nMem;
    iSortTab = pParse->nTab++;
    if( pSort->labelBkOut ){
      addrOnce = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);
    }
    sqlite3VdbeAddOp3(v, OP_OpenPseudo, iSortTab, regSortOut, nKey+1+nSortData);
    if( addrOnce ) sqlite3VdbeJumpHere(v, addrOnce);
    addr = 1 + sqlite3VdbeAddOp2(v, OP_SorterSort, iTab, addrBreak);
    VdbeCoverage(v);
    codeOffset(v, p->iOffset, addrContinue);
    sqlite3VdbeAddOp3(v, OP_SorterData, iTab, regSortOut, iSortTab);
    bSeq = 0;
  }else{
    addr = 1 + sqlite3VdbeAddOp2(v, OP_Sort, iTab, addrBreak); VdbeCoverage(v);
    codeOffset(v, p->iOffset, addrContinue);
    iSortTab = iTab;
    bSeq = 1;
  }
  for(i=0, iCol=nKey+bSeq; i<nSortData; i++){
    int iRead;
    if( aOutEx[i].u.x.iOrderByCol ){
      iRead = aOutEx[i].u.x.iOrderByCol-1;
    }else{
      iRead = iCol++;
    }
    sqlite3VdbeAddOp3(v, OP_Column, iSortTab, iRead, regRow+i);
    VdbeComment((v, "%s", aOutEx[i].zName ? aOutEx[i].zName : aOutEx[i].zSpan));
  }
  switch( eDest ){
    case 128:
    case 131: {
      sqlite3VdbeAddOp2(v, OP_NewRowid, iParm, regRowid);
      sqlite3VdbeAddOp3(v, OP_Insert, iParm, regRow, regRowid);
      sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
      break;
    }

    case 129: {
      assert( nColumn==sqlite3Strlen30(pDest->zAffSdst) );
      sqlite3VdbeAddOp4(v, OP_MakeRecord, regRow, nColumn, regRowid,
                        pDest->zAffSdst, nColumn);
      sqlite3ExprCacheAffinityChange(pParse, regRow, nColumn);
      sqlite3VdbeAddOp4Int(v, OP_IdxInsert, iParm, regRowid, regRow, nColumn);
      break;
    }
    case 130: {

      break;
    }

    default: {
      assert( eDest==SRT_Output || eDest==SRT_Coroutine );
      testcase( eDest==SRT_Output );
      testcase( eDest==SRT_Coroutine );
      if( eDest==SRT_Output ){
        sqlite3VdbeAddOp2(v, OP_ResultRow, pDest->iSdst, nColumn);
        sqlite3ExprCacheAffinityChange(pParse, pDest->iSdst, nColumn);
      }else{
        sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  if( regRowid ){
    if( eDest==129 ){
      sqlite3ReleaseTempRange(pParse, regRow, nColumn);
    }else{
      sqlite3ReleaseTempReg(pParse, regRow);
    }
    sqlite3ReleaseTempReg(pParse, regRowid);
  }


  sqlite3VdbeResolveLabel(v, addrContinue);
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    sqlite3VdbeAddOp2(v, OP_SorterNext, iTab, addr); VdbeCoverage(v);
  }else{
    sqlite3VdbeAddOp2(v, OP_Next, iTab, addr); VdbeCoverage(v);
  }
  if( pSort->regReturn ) sqlite3VdbeAddOp1(v, OP_Return, pSort->regReturn);
  sqlite3VdbeResolveLabel(v, addrBreak);
}
