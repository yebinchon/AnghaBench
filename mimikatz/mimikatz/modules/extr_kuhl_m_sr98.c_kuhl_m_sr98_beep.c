
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ULONG ;
struct TYPE_4__ {int hDevice; struct TYPE_4__* next; } ;
typedef TYPE_1__* PSR98_DEVICE ;
typedef int NTSTATUS ;
typedef int BYTE ;


 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int sr98_beep (int ,int ) ;
 int sr98_devices_free (TYPE_1__*) ;
 scalar_t__ sr98_devices_get (TYPE_1__**,int*) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_sr98_beep(int argc, wchar_t * argv[])
{
 PSR98_DEVICE devices, cur;
 ULONG count, duration = 9;
 if(argc)
  duration = wcstoul(argv[0], ((void*)0), 0);
 if(sr98_devices_get(&devices, &count))
 {
  for(cur = devices; cur; cur = cur->next)
   sr98_beep(cur->hDevice, (BYTE) duration);
  sr98_devices_free(devices);
 }
 else PRINT_ERROR(L"No device found\n");
 return STATUS_SUCCESS;
}
