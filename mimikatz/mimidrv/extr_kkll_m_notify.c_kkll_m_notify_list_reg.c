
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_7__ {scalar_t__ off1; } ;
struct TYPE_6__ {int callback; } ;
struct TYPE_5__ {scalar_t__ Flink; } ;
typedef int PVOID ;
typedef int PUCHAR ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PKKLL_M_NOTIFY_CALLBACK ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 size_t CM_REG_MAX_CALLBACKS ;
 scalar_t__* CallbackListHeadOrCmpCallBackVector ;
 scalar_t__ KIWI_mask3bits (scalar_t__) ;
 scalar_t__ KiwiOsIndex ;
 scalar_t__ KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RegReferences ;
 int STATUS_SUCCESS ;
 int kkll_m_modules_fromAddr (int ,int ) ;
 int kkll_m_notify_search (int ,int ,int *,int *,TYPE_3__**) ;
 int kprintf (int ,char*,size_t) ;
 TYPE_3__* pCmpCallBackOffsets ;

NTSTATUS kkll_m_notify_list_reg(PKIWI_BUFFER outBuffer)
{
 NTSTATUS status = STATUS_SUCCESS;
 PKKLL_M_NOTIFY_CALLBACK pNotifyCallback;
 PLIST_ENTRY pEntry;
 ULONG i;

 if(!CallbackListHeadOrCmpCallBackVector)
  status = kkll_m_notify_search(RegReferences, ARRAYSIZE(RegReferences), (PUCHAR *) &CallbackListHeadOrCmpCallBackVector, ((void*)0), &pCmpCallBackOffsets);

 if(CallbackListHeadOrCmpCallBackVector)
 {
  if(KiwiOsIndex < KiwiOsIndex_VISTA)
  {
   for(i = 0; NT_SUCCESS(status) && (i < CM_REG_MAX_CALLBACKS); i++)
   {
    if(pNotifyCallback = (PKKLL_M_NOTIFY_CALLBACK) KIWI_mask3bits(CallbackListHeadOrCmpCallBackVector[i]))
    {
     status = kprintf(outBuffer, L"[%.2u] ", i);
     if(NT_SUCCESS(status))
      status = kkll_m_modules_fromAddr(outBuffer, pNotifyCallback->callback);
    }
   }
  }
  else
  {
   for(pEntry = (PLIST_ENTRY) *CallbackListHeadOrCmpCallBackVector, i = 0 ; NT_SUCCESS(status) && (pEntry != (PLIST_ENTRY) CallbackListHeadOrCmpCallBackVector); pEntry = (PLIST_ENTRY) (pEntry->Flink), i++)
   {
    status = kprintf(outBuffer, L"[%.2u] ", i);
    if(NT_SUCCESS(status))
     status = kkll_m_modules_fromAddr(outBuffer, *(PVOID *) ((ULONG_PTR) pEntry + pCmpCallBackOffsets->off1));
   }
  }
 }
 return status;
}
