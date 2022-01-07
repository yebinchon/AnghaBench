
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t USHORT ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {size_t TableSize; int* OffsetToService; scalar_t__* ServiceTable; } ;
typedef int PVOID ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 int EX_FAST_REF_MASK ;
 TYPE_1__* KeServiceDescriptorTable ;
 scalar_t__ KiwiOsIndex ;
 scalar_t__ KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int kkll_m_modules_fromAddr (int ,int ) ;
 int kkll_m_ssdt_getKeServiceDescriptorTable () ;
 int kprintf (int ,char*,...) ;

NTSTATUS kkll_m_ssdt_list(PKIWI_BUFFER outBuffer)
{
 NTSTATUS status;
 USHORT idxFunction;
 ULONG_PTR funcAddr;






  status = kprintf(outBuffer, L"KeServiceDescriptorTable : 0x%p (%u)\n", KeServiceDescriptorTable, KeServiceDescriptorTable->TableSize);
  for(idxFunction = 0; (idxFunction < KeServiceDescriptorTable->TableSize) && NT_SUCCESS(status) ; idxFunction++)
  {



   funcAddr = (ULONG_PTR) KeServiceDescriptorTable->OffsetToService;
   if(KiwiOsIndex < KiwiOsIndex_VISTA)
    funcAddr += KeServiceDescriptorTable->OffsetToService[idxFunction] & ~EX_FAST_REF_MASK;
   else
    funcAddr += KeServiceDescriptorTable->OffsetToService[idxFunction] >> 4;

   status = kprintf(outBuffer, L"[%5u] ", idxFunction);
   if(NT_SUCCESS(status))
    status = kkll_m_modules_fromAddr(outBuffer, (PVOID) funcAddr);
  }



 return status;
}
