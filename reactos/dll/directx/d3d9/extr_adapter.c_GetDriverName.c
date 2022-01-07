
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* Driver; } ;
struct TYPE_5__ {scalar_t__ DeviceKey; } ;
typedef TYPE_1__* LPDISPLAY_DEVICEA ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef size_t DWORD ;
typedef TYPE_2__ D3DADAPTER_IDENTIFIER9 ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 size_t MAX_DEVICE_IDENTIFIER_STRING ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,size_t*,int ,size_t*) ;
 int SafeAppendString (char*,size_t,char*) ;
 int TRUE ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static BOOL GetDriverName(LPDISPLAY_DEVICEA pDisplayDevice, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    HKEY hKey;
    BOOL bResult = FALSE;

    if (ERROR_SUCCESS == RegOpenKeyExA(HKEY_LOCAL_MACHINE, pDisplayDevice->DeviceKey + strlen("\\Registry\\Machine\\"), 0, KEY_QUERY_VALUE, &hKey))
    {
        DWORD DriverNameLength = MAX_DEVICE_IDENTIFIER_STRING - (DWORD)strlen(".dll");
        DWORD Type = 0;

        if (ERROR_SUCCESS == RegQueryValueExA(hKey, "InstalledDisplayDrivers", 0, &Type, (LPBYTE)pIdentifier->Driver, &DriverNameLength))
        {
            pIdentifier->Driver[DriverNameLength] = '\0';
            SafeAppendString(pIdentifier->Driver, MAX_DEVICE_IDENTIFIER_STRING, ".dll");
            bResult = TRUE;
        }

        RegCloseKey(hKey);
    }

    return bResult;
}
