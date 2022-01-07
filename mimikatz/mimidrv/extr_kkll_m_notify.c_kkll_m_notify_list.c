
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_2__ {int callback; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef size_t* PULONG ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PKKLL_M_NOTIFY_CALLBACK ;
typedef int PKKLL_M_MEMORY_GENERIC ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 scalar_t__ KIWI_mask3bits (int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int kkll_m_modules_fromAddr (int ,int ) ;
 int kkll_m_notify_search (int ,int ,scalar_t__*,size_t*,int *) ;
 int kprintf (int ,char*,size_t) ;

NTSTATUS kkll_m_notify_list(PKIWI_BUFFER outBuffer, PKKLL_M_MEMORY_GENERIC generics, SIZE_T cbGenerics, PUCHAR * ptr, PULONG pRoutineMax)
{
 NTSTATUS status = STATUS_SUCCESS;
 PKKLL_M_NOTIFY_CALLBACK pNotifyCallback;
 ULONG i;

 if(!*ptr)
  status = kkll_m_notify_search(generics, cbGenerics, ptr, pRoutineMax, ((void*)0));

 if(*ptr)
 {
  for(i = 0; NT_SUCCESS(status) && (i < *pRoutineMax); i++)
  {
   if(pNotifyCallback = (PKKLL_M_NOTIFY_CALLBACK) KIWI_mask3bits(((PVOID *) *ptr)[i]))
   {
    status = kprintf(outBuffer, L"[%.2u] ", i);
    if(NT_SUCCESS(status))
     status = kkll_m_modules_fromAddr(outBuffer, pNotifyCallback->callback);
   }
  }
 }
 return status;
}
