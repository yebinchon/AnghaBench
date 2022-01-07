
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int didev ;
typedef char WCHAR ;
struct TYPE_11__ {int dwSize; int guidInstance; int tszInstanceName; } ;
struct TYPE_10__ {int IDirectInputDevice8W_iface; } ;
struct TYPE_9__ {int dwNumActions; TYPE_1__* rgoAction; int guidActionMap; } ;
struct TYPE_8__ {int dwObjID; int dwHow; int guidInstance; int dwSemantic; } ;
typedef TYPE_2__* LPDIACTIONFORMATW ;
typedef int LPBYTE ;
typedef TYPE_3__ IDirectInputDeviceImpl ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_4__ DIDEVICEINSTANCEW ;
typedef int BOOL ;


 int CoTaskMemFree (char*) ;
 int DIAH_UNMAPPED ;
 int DIAH_USERCONFIG ;
 int FALSE ;
 int IDirectInputDevice8_GetDeviceInfo (int *,TYPE_4__*) ;
 int RegCloseKey (int ) ;
 int RegQueryValueExW (int ,char*,int ,int *,int ,int*) ;
 scalar_t__ S_OK ;
 scalar_t__ StringFromCLSID (int *,char**) ;
 int TRUE ;
 int get_mapping_key (int ,char const*,char*,int ) ;
 int memset (int *,int ,int) ;
 int sprintfW (char*,char const*,int ) ;

BOOL load_mapping_settings(IDirectInputDeviceImpl *This, LPDIACTIONFORMATW lpdiaf, const WCHAR *username)
{
    HKEY hkey;
    WCHAR *guid_str;
    DIDEVICEINSTANCEW didev;
    int i;

    didev.dwSize = sizeof(didev);
    IDirectInputDevice8_GetDeviceInfo(&This->IDirectInputDevice8W_iface, &didev);

    if (StringFromCLSID(&lpdiaf->guidActionMap, &guid_str) != S_OK)
        return FALSE;

    hkey = get_mapping_key(didev.tszInstanceName, username, guid_str, FALSE);

    if (!hkey)
    {
        CoTaskMemFree(guid_str);
        return FALSE;
    }


    for (i = 0; i < lpdiaf->dwNumActions; i++)
    {
        static const WCHAR format[] = {'%','x','\0'};
        DWORD id, size = sizeof(DWORD);
        WCHAR label[9];

        sprintfW(label, format, lpdiaf->rgoAction[i].dwSemantic);

        if (!RegQueryValueExW(hkey, label, 0, ((void*)0), (LPBYTE) &id, &size))
        {
            lpdiaf->rgoAction[i].dwObjID = id;
            lpdiaf->rgoAction[i].guidInstance = didev.guidInstance;
            lpdiaf->rgoAction[i].dwHow = DIAH_USERCONFIG;
        }
        else
        {
            memset(&lpdiaf->rgoAction[i].guidInstance, 0, sizeof(GUID));
            lpdiaf->rgoAction[i].dwHow = DIAH_UNMAPPED;
        }

    }

    RegCloseKey(hkey);
    CoTaskMemFree(guid_str);


    return TRUE;
}
