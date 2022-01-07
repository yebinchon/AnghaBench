
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {int alloc; int * ids; int * coders; } ;
typedef int SRes ;
typedef int IStateCoder ;
typedef TYPE_1__ CMixCoder ;


 int BraState_SetFromMethod (int *,int ,int ,int ) ;
 int Lzma2State_SetFromMethod (int *,int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SbState_SetFromMethod (int *,int ) ;



SRes MixCoder_SetFromMethod(CMixCoder *p, int coderIndex, UInt64 methodId)
{
  IStateCoder *sc = &p->coders[coderIndex];
  p->ids[coderIndex] = methodId;
  switch(methodId)
  {
    case 129: return Lzma2State_SetFromMethod(sc, p->alloc);



  }
  if (coderIndex == 0)
    return SZ_ERROR_UNSUPPORTED;
  return BraState_SetFromMethod(sc, methodId, 0, p->alloc);
}
