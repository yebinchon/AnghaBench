
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizecode; int * code; } ;
typedef TYPE_1__ Proto ;
typedef int Instruction ;
typedef int DumpState ;


 int Align4 (int *) ;
 int DumpBlock (char*,int,int *) ;
 int DumpInt (int,int *) ;
 int MaybeByteSwap (char*,int,int *) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static void DumpCode(const Proto *f, DumpState* D)
{
 DumpInt(f->sizecode,D);
 char buf[10];
 int i;
 Align4(D);
 for (i=0; i<f->sizecode; i++)
 {
  memcpy(buf,&f->code[i],sizeof(Instruction));
  MaybeByteSwap(buf,sizeof(Instruction),D);
  DumpBlock(buf,sizeof(Instruction),D);
 }
}
