
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iEphCsr; } ;
typedef TYPE_1__ Window ;
typedef int Vdbe ;
typedef int Parse ;


 int OP_Goto ;
 int OP_IfPos ;
 int OP_Next ;
 int VdbeCoverage (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,scalar_t__,int) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int windowAggFinal (int *,TYPE_1__*,int ) ;
 int windowAggStep (int *,TYPE_1__*,int ,int,int,int) ;
 int windowReturnOneRow (int *,TYPE_1__*,int,int) ;

__attribute__((used)) static void windowReturnRows(
  Parse *pParse,
  Window *pMWin,
  int regCtr,
  int regGosub,
  int addrGosub,
  int regInvArg,
  int regInvSize
){
  int addr;
  Vdbe *v = sqlite3GetVdbe(pParse);
  windowAggFinal(pParse, pMWin, 0);
  addr = sqlite3VdbeAddOp3(v, OP_IfPos, regCtr, sqlite3VdbeCurrentAddr(v)+2 ,1);
  VdbeCoverage(v);
  sqlite3VdbeAddOp2(v, OP_Goto, 0, 0);
  windowReturnOneRow(pParse, pMWin, regGosub, addrGosub);
  if( regInvArg ){
    windowAggStep(pParse, pMWin, pMWin->iEphCsr, 1, regInvArg, regInvSize);
  }
  sqlite3VdbeAddOp2(v, OP_Next, pMWin->iEphCsr, addr);
  VdbeCoverage(v);
  sqlite3VdbeJumpHere(v, addr+1);
}
