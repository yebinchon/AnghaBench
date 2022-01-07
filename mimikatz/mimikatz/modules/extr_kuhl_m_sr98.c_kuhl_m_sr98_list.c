
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ULONG ;
struct TYPE_5__ {int VersionNumber; int ProductID; int VendorID; } ;
struct TYPE_6__ {TYPE_1__ hidAttributes; int DevicePath; int id; struct TYPE_6__* next; } ;
typedef TYPE_2__* PSR98_DEVICE ;
typedef int NTSTATUS ;


 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int ,int ,int ,int ,int ) ;
 int sr98_devices_free (TYPE_2__*) ;
 scalar_t__ sr98_devices_get (TYPE_2__**,int *) ;

NTSTATUS kuhl_m_sr98_list(int argc, wchar_t * argv[])
{
 PSR98_DEVICE devices, cur;
 ULONG count;
 if(sr98_devices_get(&devices, &count))
 {
  for(cur = devices; cur; cur = cur->next)
   kprintf(L"\n[%3u] %s\n  Vendor: 0x%04x, Product: 0x%04x, Version: 0x%04x\n", cur->id, cur->DevicePath, cur->hidAttributes.VendorID, cur->hidAttributes.ProductID, cur->hidAttributes.VersionNumber);
  sr98_devices_free(devices);
 }
 else PRINT_ERROR(L"No device found\n");
 return STATUS_SUCCESS;
}
