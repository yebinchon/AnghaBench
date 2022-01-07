
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_35__ {int nExpr; } ;
struct TYPE_34__ {int nMem; int db; int nTab; int * pVdbe; } ;
struct TYPE_33__ {int nSelectRow; int iLimit; int iOffset; scalar_t__ op; int selFlags; int * pLimit; TYPE_8__* pOrderBy; struct TYPE_33__* pPrior; struct TYPE_33__* pNext; void** addrOpenEphm; scalar_t__ pWin; TYPE_1__* pEList; TYPE_4__* pSrc; } ;
struct TYPE_32__ {TYPE_8__* pOrderBy; } ;
struct TYPE_31__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_29__ {scalar_t__ isRecursive; } ;
struct TYPE_30__ {int iCursor; TYPE_2__ fg; } ;
struct TYPE_28__ {int nExpr; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ SelectDest ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ Parse ;
typedef int KeyInfo ;
typedef TYPE_8__ ExprList ;
typedef int Expr ;


 scalar_t__ ALWAYS (int) ;
 int ExplainQueryPlan (TYPE_7__*) ;
 int OP_Column ;
 int OP_DecrJumpZero ;
 int OP_Delete ;
 int OP_NullRow ;
 int OP_OpenEphemeral ;
 int OP_OpenPseudo ;
 int OP_Rewind ;
 int OP_RowData ;
 int P4_KEYINFO ;
 int SF_Aggregate ;
 int SF_UsesEphemeral ;
 int SQLITE_RECURSIVE ;
 int SRT_DistFifo ;
 int SRT_DistQueue ;
 int SRT_Fifo ;
 int SRT_Queue ;
 scalar_t__ TK_UNION ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int codeOffset (int *,int,int) ;
 int computeLimitRegisters (TYPE_7__*,TYPE_6__*,int) ;
 int * multiSelectOrderByKeyInfo (TYPE_7__*,TYPE_6__*,int) ;
 int selectInnerLoop (TYPE_7__*,TYPE_6__*,int,int ,int ,TYPE_5__*,int,int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_7__*,int ,int ,int ,int ) ;
 int sqlite3ErrorMsg (TYPE_7__*,char*) ;
 int sqlite3ExprListDelete (int ,TYPE_8__*) ;
 int sqlite3Select (TYPE_7__*,TYPE_6__*,TYPE_5__*) ;
 int sqlite3SelectDestInit (TYPE_5__*,int,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 void* sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char*,int ) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_7__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;

__attribute__((used)) static void generateWithRecursiveQuery(
  Parse *pParse,
  Select *p,
  SelectDest *pDest
){
  SrcList *pSrc = p->pSrc;
  int nCol = p->pEList->nExpr;
  Vdbe *v = pParse->pVdbe;
  Select *pSetup = p->pPrior;
  int addrTop;
  int addrCont, addrBreak;
  int iCurrent = 0;
  int regCurrent;
  int iQueue;
  int iDistinct = 0;
  int eDest = SRT_Fifo;
  SelectDest destQueue;
  int i;
  int rc;
  ExprList *pOrderBy;
  Expr *pLimit;
  int regLimit, regOffset;


  if( p->pWin ){
    sqlite3ErrorMsg(pParse, "cannot use window functions in recursive queries");
    return;
  }



  if( sqlite3AuthCheck(pParse, SQLITE_RECURSIVE, 0, 0, 0) ) return;


  addrBreak = sqlite3VdbeMakeLabel(pParse);
  p->nSelectRow = 320;
  computeLimitRegisters(pParse, p, addrBreak);
  pLimit = p->pLimit;
  regLimit = p->iLimit;
  regOffset = p->iOffset;
  p->pLimit = 0;
  p->iLimit = p->iOffset = 0;
  pOrderBy = p->pOrderBy;


  for(i=0; ALWAYS(i<pSrc->nSrc); i++){
    if( pSrc->a[i].fg.isRecursive ){
      iCurrent = pSrc->a[i].iCursor;
      break;
    }
  }




  iQueue = pParse->nTab++;
  if( p->op==TK_UNION ){
    eDest = pOrderBy ? SRT_DistQueue : SRT_DistFifo;
    iDistinct = pParse->nTab++;
  }else{
    eDest = pOrderBy ? SRT_Queue : SRT_Fifo;
  }
  sqlite3SelectDestInit(&destQueue, eDest, iQueue);


  regCurrent = ++pParse->nMem;
  sqlite3VdbeAddOp3(v, OP_OpenPseudo, iCurrent, regCurrent, nCol);
  if( pOrderBy ){
    KeyInfo *pKeyInfo = multiSelectOrderByKeyInfo(pParse, p, 1);
    sqlite3VdbeAddOp4(v, OP_OpenEphemeral, iQueue, pOrderBy->nExpr+2, 0,
                      (char*)pKeyInfo, P4_KEYINFO);
    destQueue.pOrderBy = pOrderBy;
  }else{
    sqlite3VdbeAddOp2(v, OP_OpenEphemeral, iQueue, nCol);
  }
  VdbeComment((v, "Queue table"));
  if( iDistinct ){
    p->addrOpenEphm[0] = sqlite3VdbeAddOp2(v, OP_OpenEphemeral, iDistinct, 0);
    p->selFlags |= SF_UsesEphemeral;
  }


  p->pOrderBy = 0;


  pSetup->pNext = 0;
  ExplainQueryPlan((pParse, 1, "SETUP"));
  rc = sqlite3Select(pParse, pSetup, &destQueue);
  pSetup->pNext = p;
  if( rc ) goto end_of_recursive_query;


  addrTop = sqlite3VdbeAddOp2(v, OP_Rewind, iQueue, addrBreak); VdbeCoverage(v);


  sqlite3VdbeAddOp1(v, OP_NullRow, iCurrent);
  if( pOrderBy ){
    sqlite3VdbeAddOp3(v, OP_Column, iQueue, pOrderBy->nExpr+1, regCurrent);
  }else{
    sqlite3VdbeAddOp2(v, OP_RowData, iQueue, regCurrent);
  }
  sqlite3VdbeAddOp1(v, OP_Delete, iQueue);


  addrCont = sqlite3VdbeMakeLabel(pParse);
  codeOffset(v, regOffset, addrCont);
  selectInnerLoop(pParse, p, iCurrent,
      0, 0, pDest, addrCont, addrBreak);
  if( regLimit ){
    sqlite3VdbeAddOp2(v, OP_DecrJumpZero, regLimit, addrBreak);
    VdbeCoverage(v);
  }
  sqlite3VdbeResolveLabel(v, addrCont);




  if( p->selFlags & SF_Aggregate ){
    sqlite3ErrorMsg(pParse, "recursive aggregate queries not supported");
  }else{
    p->pPrior = 0;
    ExplainQueryPlan((pParse, 1, "RECURSIVE STEP"));
    sqlite3Select(pParse, p, &destQueue);
    assert( p->pPrior==0 );
    p->pPrior = pSetup;
  }


  sqlite3VdbeGoto(v, addrTop);
  sqlite3VdbeResolveLabel(v, addrBreak);

end_of_recursive_query:
  sqlite3ExprListDelete(pParse->db, p->pOrderBy);
  p->pOrderBy = pOrderBy;
  p->pLimit = pLimit;
  return;
}
