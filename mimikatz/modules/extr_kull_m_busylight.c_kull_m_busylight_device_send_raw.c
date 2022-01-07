
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ OutputReportByteLength; } ;
struct TYPE_5__ {scalar_t__ hBusy; int id; TYPE_1__ hidCaps; } ;
typedef TYPE_2__* PBUSYLIGHT_DEVICE ;
typedef int LPCVOID ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PRINT_ERROR (char*,int ,...) ;
 int WriteFile (scalar_t__,int ,scalar_t__,scalar_t__*,int *) ;

BOOL kull_m_busylight_device_send_raw(PBUSYLIGHT_DEVICE device, LPCVOID request, DWORD size)
{
 BOOL status = FALSE;
 DWORD writed;
 if(device && device->hBusy && (device->hBusy != INVALID_HANDLE_VALUE))
 {
  if(size <= device->hidCaps.OutputReportByteLength)
  {
   status = WriteFile(device->hBusy, request, size, &writed, ((void*)0));
   if(!status)
    PRINT_ERROR(L"[device %u] WriteFile (0x%08x)\n", device->id, GetLastError());
  }
  else PRINT_ERROR(L"[device %u] Size is not valide (siz = %u, max = %u)\n", device->id, size, device->hidCaps.OutputReportByteLength);
 }
 else PRINT_ERROR(L"[device %u] Invalid Device/Busy Handle\n", device->id);
 return status;
}
