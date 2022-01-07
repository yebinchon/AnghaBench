
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u8 ;
struct InLoop {int iCur; int eEndLoopOp; int addrInTop; } ;
struct TYPE_23__ {TYPE_9__* pExpr; } ;
typedef TYPE_6__ WhereTerm ;
struct TYPE_21__ {int nIn; struct InLoop* aInLoop; } ;
struct TYPE_22__ {TYPE_4__ in; } ;
struct TYPE_19__ {TYPE_1__* pIdx; } ;
struct TYPE_20__ {int wsFlags; TYPE_2__ u; } ;
struct TYPE_24__ {TYPE_5__ u; int addrNxt; TYPE_3__ plan; } ;
typedef TYPE_7__ WhereLevel ;
typedef int Vdbe ;
struct TYPE_26__ {scalar_t__ op; int iTable; int pRight; } ;
struct TYPE_25__ {int db; int * pVdbe; } ;
struct TYPE_18__ {int nColumn; scalar_t__* aSortOrder; } ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ Expr ;


 int IN_INDEX_INDEX_DESC ;
 int IN_INDEX_ROWID ;
 int OP_Column ;
 int OP_IsNull ;
 int OP_Last ;
 int OP_Next ;
 int OP_Null ;
 int OP_Prev ;
 int OP_Rewind ;
 int OP_Rowid ;
 scalar_t__ TK_EQ ;
 scalar_t__ TK_IN ;
 scalar_t__ TK_ISNULL ;
 int WHERE_INDEXED ;
 int WHERE_IN_ABLE ;
 int WHERE_REVERSE ;
 int assert (int) ;
 int disableTerm (TYPE_7__*,TYPE_6__*) ;
 struct InLoop* sqlite3DbReallocOrFree (int ,struct InLoop*,int) ;
 int sqlite3ExprCodeTarget (TYPE_8__*,int ,int) ;
 int sqlite3FindInIndex (TYPE_8__*,TYPE_9__*,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int testcase (int) ;

__attribute__((used)) static int codeEqualityTerm(
  Parse *pParse,
  WhereTerm *pTerm,
  WhereLevel *pLevel,
  int iEq,
  int iTarget
){
  Expr *pX = pTerm->pExpr;
  Vdbe *v = pParse->pVdbe;
  int iReg;

  assert( iTarget>0 );
  if( pX->op==TK_EQ ){
    iReg = sqlite3ExprCodeTarget(pParse, pX->pRight, iTarget);
  }else if( pX->op==TK_ISNULL ){
    iReg = iTarget;
    sqlite3VdbeAddOp2(v, OP_Null, 0, iReg);

  }else{
    int eType;
    int iTab;
    struct InLoop *pIn;
    u8 bRev = (pLevel->plan.wsFlags & WHERE_REVERSE)!=0;

    if( (pLevel->plan.wsFlags & WHERE_INDEXED)!=0
      && pLevel->plan.u.pIdx->aSortOrder[iEq]
    ){
      testcase( iEq==0 );
      testcase( iEq==pLevel->plan.u.pIdx->nColumn-1 );
      testcase( iEq>0 && iEq+1<pLevel->plan.u.pIdx->nColumn );
      testcase( bRev );
      bRev = !bRev;
    }
    assert( pX->op==TK_IN );
    iReg = iTarget;
    eType = sqlite3FindInIndex(pParse, pX, 0);
    if( eType==IN_INDEX_INDEX_DESC ){
      testcase( bRev );
      bRev = !bRev;
    }
    iTab = pX->iTable;
    sqlite3VdbeAddOp2(v, bRev ? OP_Last : OP_Rewind, iTab, 0);
    assert( pLevel->plan.wsFlags & WHERE_IN_ABLE );
    if( pLevel->u.in.nIn==0 ){
      pLevel->addrNxt = sqlite3VdbeMakeLabel(v);
    }
    pLevel->u.in.nIn++;
    pLevel->u.in.aInLoop =
       sqlite3DbReallocOrFree(pParse->db, pLevel->u.in.aInLoop,
                              sizeof(pLevel->u.in.aInLoop[0])*pLevel->u.in.nIn);
    pIn = pLevel->u.in.aInLoop;
    if( pIn ){
      pIn += pLevel->u.in.nIn - 1;
      pIn->iCur = iTab;
      if( eType==IN_INDEX_ROWID ){
        pIn->addrInTop = sqlite3VdbeAddOp2(v, OP_Rowid, iTab, iReg);
      }else{
        pIn->addrInTop = sqlite3VdbeAddOp3(v, OP_Column, iTab, 0, iReg);
      }
      pIn->eEndLoopOp = bRev ? OP_Prev : OP_Next;
      sqlite3VdbeAddOp1(v, OP_IsNull, iReg);
    }else{
      pLevel->u.in.nIn = 0;
    }

  }
  disableTerm(pLevel, pTerm);
  return iReg;
}
