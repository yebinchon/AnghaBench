
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int DeviceName; int Description; } ;
struct TYPE_12__ {int cb; int DeviceID; int DeviceName; int DeviceString; } ;
typedef int LPCSTR ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DISPLAY_DEVICEA ;
typedef TYPE_2__ D3DADAPTER_IDENTIFIER9 ;
typedef scalar_t__ BOOL ;


 int CCHDEVICENAME ;
 scalar_t__ EnumDisplayDevicesA (int *,scalar_t__,TYPE_1__*,int ) ;
 scalar_t__ FALSE ;
 int GenerateDeviceIdentifier (TYPE_2__*) ;
 int GetDeviceId (int ,TYPE_2__*) ;
 scalar_t__ GetDriverName (TYPE_1__*,TYPE_2__*) ;
 int GetDriverVersion (TYPE_1__*,TYPE_2__*) ;
 int MAX_DEVICE_IDENTIFIER_STRING ;
 scalar_t__ TRUE ;
 scalar_t__ _stricmp (int ,int ) ;
 int lstrcpynA (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

BOOL GetAdapterInfo(LPCSTR lpszDeviceName, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    DISPLAY_DEVICEA DisplayDevice;
    DWORD AdapterIndex;
    BOOL FoundDisplayDevice;

    memset(&DisplayDevice, 0, sizeof(DISPLAY_DEVICEA));
    DisplayDevice.cb = sizeof(DISPLAY_DEVICEA);

    AdapterIndex = 0;
    FoundDisplayDevice = FALSE;
    while (EnumDisplayDevicesA(((void*)0), AdapterIndex, &DisplayDevice, 0) != FALSE)
    {
        if (_stricmp(lpszDeviceName, DisplayDevice.DeviceName) == 0)
        {
            FoundDisplayDevice = TRUE;
            break;
        }

        ++AdapterIndex;
    }


    if (FALSE == FoundDisplayDevice)
        return FALSE;

    lstrcpynA(pIdentifier->Description, DisplayDevice.DeviceString, MAX_DEVICE_IDENTIFIER_STRING);
    lstrcpynA(pIdentifier->DeviceName, DisplayDevice.DeviceName, CCHDEVICENAME);

    if (GetDriverName(&DisplayDevice, pIdentifier) != FALSE)
        GetDriverVersion(&DisplayDevice, pIdentifier);

    GetDeviceId(DisplayDevice.DeviceID, pIdentifier);

    GenerateDeviceIdentifier(pIdentifier);

    return TRUE;
}
