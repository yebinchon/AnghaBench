
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {TYPE_1__* deviceId; int id; struct TYPE_5__* next; } ;
struct TYPE_4__ {int Capabilities; int Description; } ;
typedef TYPE_2__* PBUSYLIGHT_DEVICE ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ isBusyLight ;
 int kprintf (char*,...) ;
 int * kuhl_m_busylight_capabilities_to_String ;
 TYPE_2__* kuhl_m_busylight_devices ;

NTSTATUS kuhl_m_busylight_list(int argc, wchar_t * argv[])
{
 PBUSYLIGHT_DEVICE cur;
 DWORD i;

 if(isBusyLight)
 {
  for(cur = kuhl_m_busylight_devices; cur; cur = cur->next)
  {
   kprintf(L"[%3u] %s ( ", cur->id, cur->deviceId->Description);
   for(i = 0; i < ARRAYSIZE(kuhl_m_busylight_capabilities_to_String); i++)
   {
    if((cur->deviceId->Capabilities >> i) & 1)
     kprintf(L"%s, ", kuhl_m_busylight_capabilities_to_String[i]);
   }
   kprintf(L")\n");
  }
 }
 else PRINT_ERROR(L"No BusyLight\n");
 return STATUS_SUCCESS;
}
