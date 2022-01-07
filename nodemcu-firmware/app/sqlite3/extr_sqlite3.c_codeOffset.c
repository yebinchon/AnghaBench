
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int OP_IfPos ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;

__attribute__((used)) static void codeOffset(
  Vdbe *v,
  int iOffset,
  int iContinue
){
  if( iOffset>0 ){
    sqlite3VdbeAddOp3(v, OP_IfPos, iOffset, iContinue, 1); VdbeCoverage(v);
    VdbeComment((v, "OFFSET"));
  }
}
