#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  didev ;
typedef  char WCHAR ;
struct TYPE_11__ {int dwSize; int /*<<< orphan*/  guidInstance; int /*<<< orphan*/  tszInstanceName; } ;
struct TYPE_10__ {int /*<<< orphan*/  IDirectInputDevice8W_iface; } ;
struct TYPE_9__ {int dwNumActions; TYPE_1__* rgoAction; int /*<<< orphan*/  guidActionMap; } ;
struct TYPE_8__ {int dwObjID; int /*<<< orphan*/  dwHow; int /*<<< orphan*/  guidInstance; int /*<<< orphan*/  dwSemantic; } ;
typedef  TYPE_2__* LPDIACTIONFORMATW ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_3__ IDirectInputDeviceImpl ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  TYPE_4__ DIDEVICEINSTANCEW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DIAH_UNMAPPED ; 
 int /*<<< orphan*/  DIAH_USERCONFIG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 

BOOL FUNC8(IDirectInputDeviceImpl *This, LPDIACTIONFORMATW lpdiaf, const WCHAR *username)
{
    HKEY hkey;
    WCHAR *guid_str;
    DIDEVICEINSTANCEW didev;
    int i;

    didev.dwSize = sizeof(didev);
    FUNC1(&This->IDirectInputDevice8W_iface, &didev);

    if (FUNC4(&lpdiaf->guidActionMap, &guid_str) != S_OK)
        return FALSE;

    hkey = FUNC5(didev.tszInstanceName, username, guid_str, FALSE);

    if (!hkey)
    {
        FUNC0(guid_str);
        return FALSE;
    }

    /* Try to read each action in the DIACTIONFORMAT from registry */
    for (i = 0; i < lpdiaf->dwNumActions; i++)
    {
        static const WCHAR format[] = {'%','x','\0'};
        DWORD id, size = sizeof(DWORD);
        WCHAR label[9];

        FUNC7(label, format, lpdiaf->rgoAction[i].dwSemantic);

        if (!FUNC3(hkey, label, 0, NULL, (LPBYTE) &id, &size))
        {
            lpdiaf->rgoAction[i].dwObjID = id;
            lpdiaf->rgoAction[i].guidInstance = didev.guidInstance;
            lpdiaf->rgoAction[i].dwHow = DIAH_USERCONFIG;
        }
        else
        {
            FUNC6(&lpdiaf->rgoAction[i].guidInstance, 0, sizeof(GUID));
            lpdiaf->rgoAction[i].dwHow = DIAH_UNMAPPED;
        }

    }

    FUNC2(hkey);
    FUNC0(guid_str);

    /* On Windows BuildActionMap can open empty mapping, so always return TRUE if get_mapping_key is success */
    return TRUE;
}