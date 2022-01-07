
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_21__ {int nCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_24__ {TYPE_2__* a; } ;
struct TYPE_23__ {int nMem; scalar_t__ isMultiWrite; int nTab; int * db; int * pVdbe; } ;
struct TYPE_22__ {TYPE_1__* a; } ;
struct TYPE_20__ {int * pExpr; } ;
struct TYPE_19__ {int iCursor; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;
typedef int Expr ;


 int OE_Abort ;
 int OE_Default ;
 int OP_Close ;
 int OP_Column ;
 int OP_Insert ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_OpenEphemeral ;
 int OP_Rewind ;
 int OP_Rowid ;
 int OP_VColumn ;
 int OP_VUpdate ;
 int P4_VTAB ;
 int VdbeCoverage (int *) ;
 int WHERE_ONEPASS_DESIRED ;
 int assert (int *) ;
 int sqlite3ExprCode (TYPE_5__*,int *,int) ;
 scalar_t__ sqlite3GetVTable (int *,TYPE_3__*) ;
 scalar_t__ sqlite3IsToplevel (TYPE_5__*) ;
 int sqlite3MayAbort (TYPE_5__*) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int,char const*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeChangeToNoop (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VtabMakeWritable (TYPE_5__*,TYPE_3__*) ;
 int * sqlite3WhereBegin (TYPE_5__*,TYPE_4__*,int *,int ,int ,int ,int ) ;
 int sqlite3WhereEnd (int *) ;
 int sqlite3WhereOkOnePass (int *,int*) ;

__attribute__((used)) static void updateVirtualTable(
  Parse *pParse,
  SrcList *pSrc,
  Table *pTab,
  ExprList *pChanges,
  Expr *pRowid,
  int *aXRef,
  Expr *pWhere,
  int onError
){
  Vdbe *v = pParse->pVdbe;
  int ephemTab;
  int i;
  sqlite3 *db = pParse->db;
  const char *pVTab = (const char*)sqlite3GetVTable(db, pTab);
  WhereInfo *pWInfo;
  int nArg = 2 + pTab->nCol;
  int regArg;
  int regRec;
  int regRowid;
  int iCsr = pSrc->a[0].iCursor;
  int aDummy[2];
  int bOnePass;
  int addr;




  assert( v );
  ephemTab = pParse->nTab++;
  addr= sqlite3VdbeAddOp2(v, OP_OpenEphemeral, ephemTab, nArg);
  regArg = pParse->nMem + 1;
  pParse->nMem += nArg;
  regRec = ++pParse->nMem;
  regRowid = ++pParse->nMem;


  pWInfo = sqlite3WhereBegin(pParse, pSrc, pWhere, 0,0,WHERE_ONEPASS_DESIRED,0);
  if( pWInfo==0 ) return;


  sqlite3VdbeAddOp2(v, OP_Rowid, iCsr, regArg);
  if( pRowid ){
    sqlite3ExprCode(pParse, pRowid, regArg+1);
  }else{
    sqlite3VdbeAddOp2(v, OP_Rowid, iCsr, regArg+1);
  }
  for(i=0; i<pTab->nCol; i++){
    if( aXRef[i]>=0 ){
      sqlite3ExprCode(pParse, pChanges->a[aXRef[i]].pExpr, regArg+2+i);
    }else{
      sqlite3VdbeAddOp3(v, OP_VColumn, iCsr, i, regArg+2+i);
    }
  }

  bOnePass = sqlite3WhereOkOnePass(pWInfo, aDummy);

  if( bOnePass ){



    sqlite3VdbeChangeToNoop(v, addr);
    if( sqlite3IsToplevel(pParse) ){
      pParse->isMultiWrite = 0;
    }
  }else{


    sqlite3VdbeAddOp3(v, OP_MakeRecord, regArg, nArg, regRec);
    sqlite3VdbeAddOp2(v, OP_NewRowid, ephemTab, regRowid);
    sqlite3VdbeAddOp3(v, OP_Insert, ephemTab, regRec, regRowid);
  }


  if( bOnePass==0 ){

    sqlite3WhereEnd(pWInfo);


    addr = sqlite3VdbeAddOp1(v, OP_Rewind, ephemTab); VdbeCoverage(v);



    for(i=0; i<nArg; i++){
      sqlite3VdbeAddOp3(v, OP_Column, ephemTab, i, regArg+i);
    }
  }
  sqlite3VtabMakeWritable(pParse, pTab);
  sqlite3VdbeAddOp4(v, OP_VUpdate, 0, nArg, regArg, pVTab, P4_VTAB);
  sqlite3VdbeChangeP5(v, onError==OE_Default ? OE_Abort : onError);
  sqlite3MayAbort(pParse);



  if( bOnePass==0 ){
    sqlite3VdbeAddOp2(v, OP_Next, ephemTab, addr+1); VdbeCoverage(v);
    sqlite3VdbeJumpHere(v, addr);
    sqlite3VdbeAddOp2(v, OP_Close, ephemTab, 0);
  }else{
    sqlite3WhereEnd(pWInfo);
  }
}
