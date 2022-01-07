
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef int Expr ;
typedef int CollSeq ;


 int P4_COLLSEQ ;
 int binaryCompareP5 (int *,int *,int) ;
 int * sqlite3BinaryCompareCollSeq (TYPE_1__*,int *,int *) ;
 int sqlite3VdbeAddOp4 (int ,int,int,int,int,void*,int ) ;
 int sqlite3VdbeChangeP5 (int ,int ) ;

__attribute__((used)) static int codeCompare(
  Parse *pParse,
  Expr *pLeft,
  Expr *pRight,
  int opcode,
  int in1, int in2,
  int dest,
  int jumpIfNull
){
  int p5;
  int addr;
  CollSeq *p4;

  p4 = sqlite3BinaryCompareCollSeq(pParse, pLeft, pRight);
  p5 = binaryCompareP5(pLeft, pRight, jumpIfNull);
  addr = sqlite3VdbeAddOp4(pParse->pVdbe, opcode, in2, dest, in1,
                           (void*)p4, P4_COLLSEQ);
  sqlite3VdbeChangeP5(pParse->pVdbe, (u8)p5);
  return addr;
}
