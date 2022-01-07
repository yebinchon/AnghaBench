
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_22__ {int iPKey; } ;
typedef TYPE_1__ Table ;
struct TYPE_26__ {int mayAbort; } ;
struct TYPE_25__ {int isDeferred; int nCol; TYPE_1__* pFrom; } ;
struct TYPE_24__ {int tnum; int* aiColumn; } ;
struct TYPE_23__ {int nTab; int isMultiWrite; int pToplevel; } ;
typedef TYPE_2__ Parse ;
typedef int KeyInfo ;
typedef TYPE_3__ Index ;
typedef TYPE_4__ FKey ;


 int OE_Abort ;
 int OP_Close ;
 int OP_Copy ;
 int OP_Eq ;
 int OP_FkCounter ;
 int OP_FkIfZero ;
 int OP_Found ;
 int OP_Goto ;
 int OP_IsNull ;
 int OP_MakeRecord ;
 int OP_MustBeInt ;
 int OP_Ne ;
 int OP_NotExists ;
 int OP_OpenRead ;
 int OP_SCopy ;
 int P4_KEYINFO_HANDOFF ;
 int P4_STATIC ;
 int P4_TRANSIENT ;
 int SQLITE_CONSTRAINT_FOREIGNKEY ;
 int SQLITE_JUMPIFNULL ;
 int assert (int) ;
 int sqlite3GetTempRange (TYPE_2__*,int) ;
 int sqlite3GetTempReg (TYPE_2__*) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3HaltConstraint (TYPE_2__*,int ,int ,char*,int ) ;
 char* sqlite3IndexAffinityStr (int *,TYPE_3__*) ;
 int * sqlite3IndexKeyinfo (TYPE_2__*,TYPE_3__*) ;
 int sqlite3OpenTable (TYPE_2__*,int,int,TYPE_1__*,int ) ;
 TYPE_7__* sqlite3ParseToplevel (TYPE_2__*) ;
 int sqlite3ReleaseTempRange (TYPE_2__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_2__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int ) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;

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
  int iOk = sqlite3VdbeMakeLabel(v);
  if( nIncr<0 ){
    sqlite3VdbeAddOp2(v, OP_FkIfZero, pFKey->isDeferred, iOk);
  }
  for(i=0; i<pFKey->nCol; i++){
    int iReg = aiCol[i] + regData + 1;
    sqlite3VdbeAddOp2(v, OP_IsNull, iReg, iOk);
  }

  if( isIgnore==0 ){
    if( pIdx==0 ){


      int iMustBeInt;
      int regTemp = sqlite3GetTempReg(pParse);






      sqlite3VdbeAddOp2(v, OP_SCopy, aiCol[0]+1+regData, regTemp);
      iMustBeInt = sqlite3VdbeAddOp2(v, OP_MustBeInt, regTemp, 0);





      if( pTab==pFKey->pFrom && nIncr==1 ){
        sqlite3VdbeAddOp3(v, OP_Eq, regData, iOk, regTemp);
      }

      sqlite3OpenTable(pParse, iCur, iDb, pTab, OP_OpenRead);
      sqlite3VdbeAddOp3(v, OP_NotExists, iCur, 0, regTemp);
      sqlite3VdbeAddOp2(v, OP_Goto, 0, iOk);
      sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
      sqlite3VdbeJumpHere(v, iMustBeInt);
      sqlite3ReleaseTempReg(pParse, regTemp);
    }else{
      int nCol = pFKey->nCol;
      int regTemp = sqlite3GetTempRange(pParse, nCol);
      int regRec = sqlite3GetTempReg(pParse);
      KeyInfo *pKey = sqlite3IndexKeyinfo(pParse, pIdx);

      sqlite3VdbeAddOp3(v, OP_OpenRead, iCur, pIdx->tnum, iDb);
      sqlite3VdbeChangeP4(v, -1, (char*)pKey, P4_KEYINFO_HANDOFF);
      for(i=0; i<nCol; i++){
        sqlite3VdbeAddOp2(v, OP_Copy, aiCol[i]+1+regData, regTemp+i);
      }
      if( pTab==pFKey->pFrom && nIncr==1 ){
        int iJump = sqlite3VdbeCurrentAddr(v) + nCol + 1;
        for(i=0; i<nCol; i++){
          int iChild = aiCol[i]+1+regData;
          int iParent = pIdx->aiColumn[i]+1+regData;
          assert( aiCol[i]!=pTab->iPKey );
          if( pIdx->aiColumn[i]==pTab->iPKey ){

            iParent = regData;
          }
          sqlite3VdbeAddOp3(v, OP_Ne, iChild, iJump, iParent);
          sqlite3VdbeChangeP5(v, SQLITE_JUMPIFNULL);
        }
        sqlite3VdbeAddOp2(v, OP_Goto, 0, iOk);
      }

      sqlite3VdbeAddOp3(v, OP_MakeRecord, regTemp, nCol, regRec);
      sqlite3VdbeChangeP4(v, -1, sqlite3IndexAffinityStr(v,pIdx), P4_TRANSIENT);
      sqlite3VdbeAddOp4Int(v, OP_Found, iCur, iOk, regRec, 0);

      sqlite3ReleaseTempReg(pParse, regRec);
      sqlite3ReleaseTempRange(pParse, regTemp, nCol);
    }
  }

  if( !pFKey->isDeferred && !pParse->pToplevel && !pParse->isMultiWrite ){




    assert( nIncr==1 );
    sqlite3HaltConstraint(pParse, SQLITE_CONSTRAINT_FOREIGNKEY,
        OE_Abort, "foreign key constraint failed", P4_STATIC
    );
  }else{
    if( nIncr>0 && pFKey->isDeferred==0 ){
      sqlite3ParseToplevel(pParse)->mayAbort = 1;
    }
    sqlite3VdbeAddOp2(v, OP_FkCounter, pFKey->isDeferred, nIncr);
  }

  sqlite3VdbeResolveLabel(v, iOk);
  sqlite3VdbeAddOp1(v, OP_Close, iCur);
}
