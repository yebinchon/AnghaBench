
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_9__ {int off1; int off0; } ;
struct TYPE_8__ {int Length; int Pattern; } ;
struct TYPE_10__ {TYPE_2__ Offsets; TYPE_1__ Search; int end; int start; } ;
typedef int SIZE_T ;
typedef int * PULONG ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_2__* PKKLL_M_MEMORY_OFFSETS ;
typedef TYPE_3__* PKKLL_M_MEMORY_GENERIC ;
typedef int NTSTATUS ;


 scalar_t__ MmGetSystemRoutineAddress (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_NOT_FOUND ;
 int kkll_m_memory_genericPointerSearch (scalar_t__*,scalar_t__,scalar_t__,int ,int ,int ) ;
 TYPE_3__* kkll_m_memory_getGenericFromBuild (TYPE_3__*,int ) ;

NTSTATUS kkll_m_notify_search(PKKLL_M_MEMORY_GENERIC generics, SIZE_T cbGenerics, PUCHAR * ptr, PULONG pRoutineMax, PKKLL_M_MEMORY_OFFSETS * pOffsets)
{
 NTSTATUS status = STATUS_NOT_FOUND;
 PKKLL_M_MEMORY_GENERIC pGeneric;
 UNICODE_STRING stringStart, stringEnd;
 PUCHAR start, end;

 if(pGeneric = kkll_m_memory_getGenericFromBuild(generics, cbGenerics))
 {
  RtlInitUnicodeString(&stringStart, pGeneric->start);
  RtlInitUnicodeString(&stringEnd, pGeneric->end);
  start = (PUCHAR) MmGetSystemRoutineAddress(&stringStart);
  end = (PUCHAR) MmGetSystemRoutineAddress(&stringEnd);

  if(start && end)
  {
   status = kkll_m_memory_genericPointerSearch(ptr, start, end, pGeneric->Search.Pattern, pGeneric->Search.Length, pGeneric->Offsets.off0);
   if(NT_SUCCESS(status))
   {
    if(pRoutineMax)
     *pRoutineMax = pGeneric->Offsets.off1;
    if(pOffsets)
     *pOffsets = &pGeneric->Offsets;
   }
  }
 }
 return status;
}
