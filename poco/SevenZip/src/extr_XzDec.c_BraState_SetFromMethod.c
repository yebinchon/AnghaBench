
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_10__ {int encodeMode; scalar_t__ methodId; } ;
struct TYPE_9__ {int Code; int Init; int SetProps; int Free; TYPE_3__* p; } ;
struct TYPE_8__ {TYPE_3__* (* Alloc ) (TYPE_1__*,int) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ IStateCoder ;
typedef TYPE_3__ CBraState ;


 int BraState_Code ;
 int BraState_Free ;
 int BraState_Init ;
 int BraState_SetProps ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 scalar_t__ XZ_ID_ARM ;
 scalar_t__ XZ_ID_ARMT ;
 scalar_t__ XZ_ID_Delta ;
 scalar_t__ XZ_ID_IA64 ;
 scalar_t__ XZ_ID_PPC ;
 scalar_t__ XZ_ID_SPARC ;
 scalar_t__ XZ_ID_X86 ;
 TYPE_3__* stub1 (TYPE_1__*,int) ;

SRes BraState_SetFromMethod(IStateCoder *p, UInt64 id, int encodeMode, ISzAlloc *alloc)
{
  CBraState *decoder;
  if (id != XZ_ID_Delta &&
      id != XZ_ID_X86 &&
      id != XZ_ID_PPC &&
      id != XZ_ID_IA64 &&
      id != XZ_ID_ARM &&
      id != XZ_ID_ARMT &&
      id != XZ_ID_SPARC)
    return SZ_ERROR_UNSUPPORTED;
  p->p = 0;
  decoder = alloc->Alloc(alloc, sizeof(CBraState));
  if (decoder == 0)
    return SZ_ERROR_MEM;
  decoder->methodId = (UInt32)id;
  decoder->encodeMode = encodeMode;
  p->p = decoder;
  p->Free = BraState_Free;
  p->SetProps = BraState_SetProps;
  p->Init = BraState_Init;
  p->Code = BraState_Code;
  return SZ_OK;
}
