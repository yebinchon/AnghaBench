
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ PostOperation; scalar_t__ PreOperation; int Handle; int Operations; } ;
typedef TYPE_1__* POBJECT_CALLBACK_ENTRY ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int kkll_m_modules_fromAddr (int ,scalar_t__) ;
 int kprintf (int ,char*,...) ;

NTSTATUS kkll_m_notify_desc_object_callback(POBJECT_CALLBACK_ENTRY pCallbackEntry, PKIWI_BUFFER outBuffer)
{
 NTSTATUS status = STATUS_SUCCESS;
 if(pCallbackEntry->PreOperation || pCallbackEntry->PostOperation)
 {
  status = kprintf(outBuffer, L"\t* Callback [type %u] - Handle 0x%p (@ 0x%p)\n", pCallbackEntry->Operations, pCallbackEntry->Handle, pCallbackEntry);
  if(NT_SUCCESS(status) && pCallbackEntry->PreOperation)
  {
   status = kprintf(outBuffer, L"\t\tPreOperation  : ");
   if(NT_SUCCESS(status))
    status = kkll_m_modules_fromAddr(outBuffer, pCallbackEntry->PreOperation);
  }
  if(NT_SUCCESS(status) && pCallbackEntry->PostOperation)
  {
   status = kprintf(outBuffer, L"\t\tPostOperation : ");
   if(NT_SUCCESS(status))
    status = kkll_m_modules_fromAddr(outBuffer, pCallbackEntry->PostOperation);
  }
 }
 return status;
}
