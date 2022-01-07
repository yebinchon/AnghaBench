
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ InputReportByteLength; } ;
struct TYPE_5__ {scalar_t__ hBusy; int id; TYPE_1__ hidCaps; } ;
typedef TYPE_2__* PBUSYLIGHT_DEVICE ;
typedef int LPVOID ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LPTR ;
 int LocalAlloc (int ,scalar_t__) ;
 int LocalFree (int ) ;
 int PRINT_ERROR (char*,scalar_t__,...) ;
 scalar_t__ ReadFile (scalar_t__,int ,scalar_t__,scalar_t__*,int *) ;

BOOL kull_m_busylight_device_read_raw(PBUSYLIGHT_DEVICE device, LPVOID *data, DWORD *size)
{
 BOOL status = FALSE;
 DWORD toRead;
 if(device && device->hBusy && (device->hBusy != INVALID_HANDLE_VALUE))
 {
  toRead = device->hidCaps.InputReportByteLength;
  if(*data = LocalAlloc(LPTR, toRead))
  {
   status = ReadFile(device->hBusy, *data, toRead, size, ((void*)0));
   if(!status || (status && (*size != toRead)))
   {
    if(!status)
     PRINT_ERROR(L"[device %u] ReadFile (0x%08x)\n", device->id, GetLastError());
    else
     PRINT_ERROR(L"[device %u] %u byte(s) readed, %u wanted\n", *size, toRead);
    *data = LocalFree(*data);
    *size = 0;
   }
  }
 }
 else PRINT_ERROR(L"[device %u] Invalid Device/Busy Handle\n", device->id);
 return status;
}
