
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int Size; } ;
struct TYPE_19__ {scalar_t__ Capabilities; } ;
struct TYPE_16__ {int box_sensivity; int box_timeout; int box_triggertime; } ;
struct TYPE_18__ {int cbSize; scalar_t__ hBusy; int dKeepAliveThread; struct TYPE_18__* next; int hKeepAliveThread; int DevicePath; scalar_t__ id; TYPE_1__ dpi; TYPE_4__* deviceId; TYPE_6__ hidAttributes; int hidCaps; } ;
struct TYPE_17__ {int cbSize; } ;
typedef int SP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef TYPE_3__* PSP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef int PHIDP_PREPARSED_DATA ;
typedef TYPE_4__* PCBUSYLIGHT_DEVICE_ID ;
typedef TYPE_3__* PBUSYLIGHT_DEVICE ;
typedef int NTSTATUS ;
typedef TYPE_6__ HIDD_ATTRIBUTES ;
typedef scalar_t__ HDEVINFO ;
typedef scalar_t__ HANDLE ;
typedef int GUID ;
typedef scalar_t__ DWORD ;
typedef int BUSYLIGHT_DEVICE ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 void* CreateFile (int ,int,int,int *,int ,int ,int *) ;
 int CreateThread (int *,int ,int ,TYPE_3__*,int ,int *) ;
 int DIGCF_DEVICEINTERFACE ;
 int DIGCF_PRESENT ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FILE_READ_DATA ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_WRITE_DATA ;
 scalar_t__ GetLastError () ;
 int HidD_FreePreparsedData (int ) ;
 scalar_t__ HidD_GetAttributes (scalar_t__,TYPE_6__*) ;
 int HidD_GetHidGuid (int *) ;
 scalar_t__ HidD_GetPreparsedData (scalar_t__,int *) ;
 int HidP_GetCaps (int ,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (TYPE_3__*) ;
 int NT_SUCCESS (int ) ;
 int OPEN_EXISTING ;
 int PRINT_ERROR (char*,int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 int SetupDiEnumDeviceInterfaces (scalar_t__,int *,int *,scalar_t__,TYPE_2__*) ;
 scalar_t__ SetupDiGetClassDevs (int *,int *,int *,int) ;
 scalar_t__ SetupDiGetDeviceInterfaceDetail (scalar_t__,TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__*,int *) ;
 int TRUE ;
 int _wcsdup (int ) ;
 TYPE_4__* kull_m_busylight_devices_getIdFromAttributes (TYPE_6__*) ;
 int kull_m_busylight_keepAliveThread ;

BOOL kull_m_busylight_devices_get(PBUSYLIGHT_DEVICE *devices, DWORD *count, DWORD mask, BOOL bAutoThread)
{
 PBUSYLIGHT_DEVICE *next = devices;
 GUID guidHid;
 HDEVINFO hDevInfo;
 SP_DEVICE_INTERFACE_DATA DeviceInterfaceData;
 BOOL enumStatus;
 DWORD enumIndex, dwRequired, id = 0;
 PSP_DEVICE_INTERFACE_DETAIL_DATA DeviceInterfaceDetailData;
 HANDLE deviceHandle;
 HIDD_ATTRIBUTES attributes;
 PCBUSYLIGHT_DEVICE_ID deviceId;
 PHIDP_PREPARSED_DATA PreparsedData;
 NTSTATUS status;

 *next = ((void*)0);
 HidD_GetHidGuid(&guidHid);
 hDevInfo = SetupDiGetClassDevs(&guidHid, ((void*)0), ((void*)0), DIGCF_DEVICEINTERFACE | DIGCF_PRESENT);
 if(hDevInfo != INVALID_HANDLE_VALUE)
 {
  for(enumIndex = 0, enumStatus = TRUE; enumStatus; enumIndex++)
  {
   DeviceInterfaceData.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
   if(enumStatus = SetupDiEnumDeviceInterfaces(hDevInfo, ((void*)0), &guidHid, enumIndex, &DeviceInterfaceData))
   {
    dwRequired = 0;
    if(!SetupDiGetDeviceInterfaceDetail(hDevInfo, &DeviceInterfaceData, ((void*)0), 0, &dwRequired, ((void*)0)) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))
    {
     if(DeviceInterfaceDetailData = (PSP_DEVICE_INTERFACE_DETAIL_DATA) LocalAlloc(LPTR, dwRequired))
     {
      DeviceInterfaceDetailData->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
      if(SetupDiGetDeviceInterfaceDetail(hDevInfo, &DeviceInterfaceData, DeviceInterfaceDetailData, dwRequired, &dwRequired, ((void*)0)))
      {
       deviceHandle = CreateFile(DeviceInterfaceDetailData->DevicePath, 0, FILE_SHARE_READ | FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
       if(deviceHandle != INVALID_HANDLE_VALUE)
       {
        attributes.Size = sizeof(HIDD_ATTRIBUTES);
        if(HidD_GetAttributes(deviceHandle, &attributes))
        {
         if(deviceId = kull_m_busylight_devices_getIdFromAttributes(&attributes))
         {
          if((deviceId->Capabilities & mask) == mask)
          {
           if(*next = (PBUSYLIGHT_DEVICE) LocalAlloc(LPTR, sizeof(BUSYLIGHT_DEVICE)))
           {
            if(HidD_GetPreparsedData(deviceHandle, &PreparsedData))
            {
             status = HidP_GetCaps(PreparsedData, &(*next)->hidCaps);
             if(!NT_SUCCESS(status))
              PRINT_ERROR(L"HidP_GetCaps (%08x)\n", status);
             HidD_FreePreparsedData(PreparsedData);
            }
            (*next)->DevicePath = _wcsdup(DeviceInterfaceDetailData->DevicePath);
            (*next)->hidAttributes = attributes;
            (*next)->deviceId = deviceId;
            (*next)->dpi.box_sensivity = 4;
            (*next)->dpi.box_timeout = 4;
            (*next)->dpi.box_triggertime = 85;
            (*next)->id = id;
            (*next)->hBusy = CreateFile(DeviceInterfaceDetailData->DevicePath, FILE_READ_DATA | FILE_WRITE_DATA, FILE_SHARE_READ | FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, 0, ((void*)0));

            if((*next)->hBusy && ((*next)->hBusy != INVALID_HANDLE_VALUE))
            {
             if(bAutoThread)
             {
              (*next)->dKeepAliveThread = 5000;
              if((*next)->hKeepAliveThread = CreateThread(((void*)0), 0, kull_m_busylight_keepAliveThread, *next, 0, ((void*)0)))
              {
               next = &(*next)->next;
               id++;
              }
              else
              {
               PRINT_ERROR_AUTO(L"CreateThread (hKeepAliveThread)");
               CloseHandle((*next)->hBusy);
               LocalFree(*next);
              }
             }
             else
             {
              next = &(*next)->next;
              id++;
             }
            }
            else
            {
             PRINT_ERROR_AUTO(L"CreateFile (hBusy)");
             *next = (PBUSYLIGHT_DEVICE) LocalFree(*next);
            }
           }
          }
         }
        }
        CloseHandle(deviceHandle);
       }
       else PRINT_ERROR_AUTO(L"CreateFile (deviceHandle)");
      }
      LocalFree(DeviceInterfaceDetailData);
     }
    }
   }
  }
  SetupDiDestroyDeviceInfoList(hDevInfo);
 }
 else PRINT_ERROR_AUTO(L"SetupDiGetClassDevs");

 if(count)
  *count = id;
 return (id > 0);
}
