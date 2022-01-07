
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ULONG ;
struct TYPE_4__ {int hDevice; int id; struct TYPE_4__* next; } ;
typedef int PSTR ;
typedef TYPE_1__* PRDM_DEVICE ;
typedef int NTSTATUS ;


 int LocalFree (int ) ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int ) ;
 int rdm_devices_free (TYPE_1__*) ;
 scalar_t__ rdm_devices_get (TYPE_1__**,int *) ;
 scalar_t__ rdm_get_version (int ,int *) ;

NTSTATUS kuhl_m_rdm_version(int argc, wchar_t * argv[])
{
 PRDM_DEVICE devices, cur;
 ULONG count;
 PSTR version;

 if(rdm_devices_get(&devices, &count))
 {
  for(cur = devices; cur; cur = cur->next)
  {
   kprintf(L"[%3u] ", cur->id);
   if(rdm_get_version(cur->hDevice, &version))
   {
    kprintf(L"%S\n", version);
    LocalFree(version);
   }
  }
  rdm_devices_free(devices);
 }
 else PRINT_ERROR(L"No device found\n");
 return STATUS_SUCCESS;
}
