
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int didev ;
typedef char WCHAR ;
struct TYPE_8__ {int dwSize; int guidInstance; int tszInstanceName; } ;
struct TYPE_7__ {int dwNumActions; TYPE_1__* rgoAction; int guidActionMap; } ;
struct TYPE_6__ {scalar_t__ dwHow; int dwObjID; int dwSemantic; int guidInstance; } ;
typedef TYPE_2__* LPDIACTIONFORMATW ;
typedef int LPCWSTR ;
typedef int IDirectInputDevice8W ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef TYPE_3__ DIDEVICEINSTANCEW ;
typedef int BYTE ;


 int CoTaskMemFree (char*) ;
 scalar_t__ DIAH_UNMAPPED ;
 int DI_OK ;
 int DI_SETTINGSNOTSAVED ;
 int IDirectInputDevice8_GetDeviceInfo (int *,TYPE_3__*) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 int RegSetValueExW (int ,char*,int ,int ,int const*,int) ;
 scalar_t__ S_OK ;
 scalar_t__ StringFromCLSID (int *,char**) ;
 int TRUE ;
 int del_mapping_key (int ,int ,char*) ;
 int get_mapping_key (int ,int ,char*,int ) ;
 int sprintfW (char*,char const*,int ) ;

HRESULT save_mapping_settings(IDirectInputDevice8W *iface, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUsername)
{
    WCHAR *guid_str = ((void*)0);
    DIDEVICEINSTANCEW didev;
    HKEY hkey;
    int i;

    didev.dwSize = sizeof(didev);
    IDirectInputDevice8_GetDeviceInfo(iface, &didev);

    if (StringFromCLSID(&lpdiaf->guidActionMap, &guid_str) != S_OK)
        return DI_SETTINGSNOTSAVED;

    del_mapping_key(didev.tszInstanceName, lpszUsername, guid_str);

    hkey = get_mapping_key(didev.tszInstanceName, lpszUsername, guid_str, TRUE);

    if (!hkey)
    {
        CoTaskMemFree(guid_str);
        return DI_SETTINGSNOTSAVED;
    }




    for (i = 0; i < lpdiaf->dwNumActions; i++)
    {
        static const WCHAR format[] = {'%','x','\0'};
        WCHAR label[9];

        if (IsEqualGUID(&didev.guidInstance, &lpdiaf->rgoAction[i].guidInstance) &&
            lpdiaf->rgoAction[i].dwHow != DIAH_UNMAPPED)
        {
             sprintfW(label, format, lpdiaf->rgoAction[i].dwSemantic);
             RegSetValueExW(hkey, label, 0, REG_DWORD, (const BYTE*) &lpdiaf->rgoAction[i].dwObjID, sizeof(DWORD));
        }
    }

    RegCloseKey(hkey);
    CoTaskMemFree(guid_str);

    return DI_OK;
}
