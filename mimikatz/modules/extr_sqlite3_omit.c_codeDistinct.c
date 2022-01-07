
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_5__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 int OPFLAG_USESEEKRESULT ;
 int OP_Found ;
 int OP_IdxInsert ;
 int OP_MakeRecord ;
 int VdbeCoverage (int *) ;
 int sqlite3GetTempReg (TYPE_1__*) ;
 int sqlite3ReleaseTempReg (TYPE_1__*,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;

__attribute__((used)) static void codeDistinct(
  Parse *pParse,
  int iTab,
  int addrRepeat,
  int N,
  int iMem
){
  Vdbe *v;
  int r1;

  v = pParse->pVdbe;
  r1 = sqlite3GetTempReg(pParse);
  sqlite3VdbeAddOp4Int(v, OP_Found, iTab, addrRepeat, iMem, N); VdbeCoverage(v);
  sqlite3VdbeAddOp3(v, OP_MakeRecord, iMem, N, r1);
  sqlite3VdbeAddOp4Int(v, OP_IdxInsert, iTab, r1, iMem, N);
  sqlite3VdbeChangeP5(v, OPFLAG_USESEEKRESULT);
  sqlite3ReleaseTempReg(pParse, r1);
}
