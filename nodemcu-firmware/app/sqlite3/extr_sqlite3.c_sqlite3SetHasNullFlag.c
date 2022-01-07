
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int OPFLAG_TYPEOFARG ;
 int OP_Column ;
 int OP_Integer ;
 int OP_Rewind ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeJumpHere (int *,int) ;

__attribute__((used)) static void sqlite3SetHasNullFlag(Vdbe *v, int iCur, int regHasNull){
  int addr1;
  sqlite3VdbeAddOp2(v, OP_Integer, 0, regHasNull);
  addr1 = sqlite3VdbeAddOp1(v, OP_Rewind, iCur); VdbeCoverage(v);
  sqlite3VdbeAddOp3(v, OP_Column, iCur, 0, regHasNull);
  sqlite3VdbeChangeP5(v, OPFLAG_TYPEOFARG);
  VdbeComment((v, "first_entry_in(%d)", iCur));
  sqlite3VdbeJumpHere(v, addr1);
}
