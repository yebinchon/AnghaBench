
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_13__ ;


typedef int Vdbe ;
struct TYPE_24__ {int iPKey; } ;
typedef TYPE_1__ Table ;
struct TYPE_27__ {int isDeferred; int nCol; TYPE_1__* pFrom; } ;
struct TYPE_26__ {int tnum; int* aiColumn; } ;
struct TYPE_25__ {int nTab; int isMultiWrite; int pToplevel; TYPE_13__* db; } ;
struct TYPE_23__ {int flags; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;
typedef TYPE_4__ FKey ;


 int OE_Abort ;
 int OE_Ignore ;
 int OP_Close ;
 int OP_Copy ;
 int OP_Eq ;
 int OP_FkCounter ;
 int OP_FkIfZero ;
 int OP_Found ;
 int OP_IsNull ;
 int OP_MakeRecord ;
 int OP_MustBeInt ;
 int OP_Ne ;
 int OP_NotExists ;
 int OP_OpenRead ;
 int OP_SCopy ;
 int P4_STATIC ;
 int P5_ConstraintFK ;
 int SQLITE_CONSTRAINT_FOREIGNKEY ;
 int SQLITE_DeferFKs ;
 int SQLITE_JUMPIFNULL ;
 int SQLITE_NOTNULL ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int sqlite3GetTempRange (TYPE_2__*,int) ;
 int sqlite3GetTempReg (TYPE_2__*) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3HaltConstraint (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int sqlite3IndexAffinityStr (TYPE_13__*,TYPE_3__*) ;
 int sqlite3MayAbort (TYPE_2__*) ;
 int sqlite3OpenTable (TYPE_2__*,int,int,TYPE_1__*,int ) ;
 int sqlite3ReleaseTempRange (TYPE_2__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_2__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,int ,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_2__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int sqlite3VdbeSetP4KeyInfo (TYPE_2__*,TYPE_3__*) ;
 int sqlite3VdbeVerifyAbortable (int *,int ) ;

__attribute__((used)) static void fkLookupParent(
  Parse *pParse,
  int iDb,
  Table *pTab,
  Index *pIdx,
  FKey *pFKey,
  int *aiCol,
  int regData,
  int nIncr,
  int isIgnore
){
  int i;
  Vdbe *v = sqlite3GetVdbe(pParse);
  int iCur = pParse->nTab - 1;
  int iOk = sqlite3VdbeMakeLabel(pParse);

  sqlite3VdbeVerifyAbortable(v,
    (!pFKey->isDeferred
      && !(pParse->db->flags & SQLITE_DeferFKs)
      && !pParse->pToplevel
      && !pParse->isMultiWrite) ? OE_Abort : OE_Ignore);
  if( nIncr<0 ){
    sqlite3VdbeAddOp2(v, OP_FkIfZero, pFKey->isDeferred, iOk);
    VdbeCoverage(v);
  }
  for(i=0; i<pFKey->nCol; i++){
    int iReg = aiCol[i] + regData + 1;
    sqlite3VdbeAddOp2(v, OP_IsNull, iReg, iOk); VdbeCoverage(v);
  }

  if( isIgnore==0 ){
    if( pIdx==0 ){


      int iMustBeInt;
      int regTemp = sqlite3GetTempReg(pParse);






      sqlite3VdbeAddOp2(v, OP_SCopy, aiCol[0]+1+regData, regTemp);
      iMustBeInt = sqlite3VdbeAddOp2(v, OP_MustBeInt, regTemp, 0);
      VdbeCoverage(v);





      if( pTab==pFKey->pFrom && nIncr==1 ){
        sqlite3VdbeAddOp3(v, OP_Eq, regData, iOk, regTemp); VdbeCoverage(v);
        sqlite3VdbeChangeP5(v, SQLITE_NOTNULL);
      }

      sqlite3OpenTable(pParse, iCur, iDb, pTab, OP_OpenRead);
      sqlite3VdbeAddOp3(v, OP_NotExists, iCur, 0, regTemp); VdbeCoverage(v);
      sqlite3VdbeGoto(v, iOk);
      sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
      sqlite3VdbeJumpHere(v, iMustBeInt);
      sqlite3ReleaseTempReg(pParse, regTemp);
    }else{
      int nCol = pFKey->nCol;
      int regTemp = sqlite3GetTempRange(pParse, nCol);
      int regRec = sqlite3GetTempReg(pParse);

      sqlite3VdbeAddOp3(v, OP_OpenRead, iCur, pIdx->tnum, iDb);
      sqlite3VdbeSetP4KeyInfo(pParse, pIdx);
      for(i=0; i<nCol; i++){
        sqlite3VdbeAddOp2(v, OP_Copy, aiCol[i]+1+regData, regTemp+i);
      }
      if( pTab==pFKey->pFrom && nIncr==1 ){
        int iJump = sqlite3VdbeCurrentAddr(v) + nCol + 1;
        for(i=0; i<nCol; i++){
          int iChild = aiCol[i]+1+regData;
          int iParent = pIdx->aiColumn[i]+1+regData;
          assert( pIdx->aiColumn[i]>=0 );
          assert( aiCol[i]!=pTab->iPKey );
          if( pIdx->aiColumn[i]==pTab->iPKey ){

            iParent = regData;
          }
          sqlite3VdbeAddOp3(v, OP_Ne, iChild, iJump, iParent); VdbeCoverage(v);
          sqlite3VdbeChangeP5(v, SQLITE_JUMPIFNULL);
        }
        sqlite3VdbeGoto(v, iOk);
      }

      sqlite3VdbeAddOp4(v, OP_MakeRecord, regTemp, nCol, regRec,
                        sqlite3IndexAffinityStr(pParse->db,pIdx), nCol);
      sqlite3VdbeAddOp4Int(v, OP_Found, iCur, iOk, regRec, 0); VdbeCoverage(v);

      sqlite3ReleaseTempReg(pParse, regRec);
      sqlite3ReleaseTempRange(pParse, regTemp, nCol);
    }
  }

  if( !pFKey->isDeferred && !(pParse->db->flags & SQLITE_DeferFKs)
   && !pParse->pToplevel
   && !pParse->isMultiWrite
  ){




    assert( nIncr==1 );
    sqlite3HaltConstraint(pParse, SQLITE_CONSTRAINT_FOREIGNKEY,
        OE_Abort, 0, P4_STATIC, P5_ConstraintFK);
  }else{
    if( nIncr>0 && pFKey->isDeferred==0 ){
      sqlite3MayAbort(pParse);
    }
    sqlite3VdbeAddOp2(v, OP_FkCounter, pFKey->isDeferred, nIncr);
  }

  sqlite3VdbeResolveLabel(v, iOk);
  sqlite3VdbeAddOp1(v, OP_Close, iCur);
}
