
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int nBufferCol; int regPart; int iEphCsr; TYPE_7__* pPartition; } ;
typedef TYPE_4__ Window ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_19__ {int nExpr; } ;
struct TYPE_18__ {int nMem; } ;
struct TYPE_17__ {TYPE_3__* pSrc; TYPE_4__* pWin; } ;
struct TYPE_15__ {TYPE_2__* a; } ;
struct TYPE_14__ {int iCursor; TYPE_1__* pTab; } ;
struct TYPE_13__ {int nCol; } ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef int KeyInfo ;
typedef TYPE_7__ ExprList ;


 int OP_Column ;
 int OP_Compare ;
 int OP_Copy ;
 int OP_Gosub ;
 int OP_Insert ;
 int OP_Jump ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int P4_KEYINFO ;
 int VdbeComment (int *) ;
 int VdbeCoverageEqNe (int *) ;
 int * sqlite3GetVdbe (TYPE_6__*) ;
 int * sqlite3KeyInfoFromExprList (TYPE_6__*,TYPE_7__*,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3WhereEnd (int *) ;

__attribute__((used)) static void windowPartitionCache(
  Parse *pParse,
  Select *p,
  WhereInfo *pWInfo,
  int regFlushPart,
  int lblFlushPart,
  int *pRegSize
){
  Window *pMWin = p->pWin;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int iSubCsr = p->pSrc->a[0].iCursor;
  int nSub = p->pSrc->a[0].pTab->nCol;
  int k;

  int reg = pParse->nMem+1;
  int regRecord = reg+nSub;
  int regRowid = regRecord+1;

  *pRegSize = regRowid;
  pParse->nMem += nSub + 2;



  for(k=0; k<nSub; k++){
    sqlite3VdbeAddOp3(v, OP_Column, iSubCsr, k, reg+k);
  }
  sqlite3VdbeAddOp3(v, OP_MakeRecord, reg, nSub, regRecord);



  if( pMWin->pPartition ){
    int addr;
    ExprList *pPart = pMWin->pPartition;
    int nPart = pPart->nExpr;
    int regNewPart = reg + pMWin->nBufferCol;
    KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pPart, 0, 0);

    addr = sqlite3VdbeAddOp3(v, OP_Compare, regNewPart, pMWin->regPart,nPart);
    sqlite3VdbeAppendP4(v, (void*)pKeyInfo, P4_KEYINFO);
    sqlite3VdbeAddOp3(v, OP_Jump, addr+2, addr+4, addr+2);
    VdbeCoverageEqNe(v);
    sqlite3VdbeAddOp3(v, OP_Copy, regNewPart, pMWin->regPart, nPart-1);
    sqlite3VdbeAddOp2(v, OP_Gosub, regFlushPart, lblFlushPart);
    VdbeComment((v, "call flush_partition"));
  }


  sqlite3VdbeAddOp2(v, OP_NewRowid, pMWin->iEphCsr, regRowid);
  sqlite3VdbeAddOp3(v, OP_Insert, pMWin->iEphCsr, regRecord, regRowid);


  sqlite3WhereEnd(pWInfo);


  sqlite3VdbeAddOp2(v, OP_Gosub, regFlushPart, lblFlushPart);
  VdbeComment((v, "call flush_partition"));
}
