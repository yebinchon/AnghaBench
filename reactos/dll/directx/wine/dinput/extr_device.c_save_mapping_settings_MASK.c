#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  didev ;
typedef  char WCHAR ;
struct TYPE_8__ {int dwSize; int /*<<< orphan*/  guidInstance; int /*<<< orphan*/  tszInstanceName; } ;
struct TYPE_7__ {int dwNumActions; TYPE_1__* rgoAction; int /*<<< orphan*/  guidActionMap; } ;
struct TYPE_6__ {scalar_t__ dwHow; int /*<<< orphan*/  dwObjID; int /*<<< orphan*/  dwSemantic; int /*<<< orphan*/  guidInstance; } ;
typedef  TYPE_2__* LPDIACTIONFORMATW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IDirectInputDevice8W ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ DIDEVICEINSTANCEW ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DIAH_UNMAPPED ; 
 int /*<<< orphan*/  DI_OK ; 
 int /*<<< orphan*/  DI_SETTINGSNOTSAVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 

HRESULT FUNC9(IDirectInputDevice8W *iface, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUsername)
{
    WCHAR *guid_str = NULL;
    DIDEVICEINSTANCEW didev;
    HKEY hkey;
    int i;

    didev.dwSize = sizeof(didev);
    FUNC1(iface, &didev);

    if (FUNC5(&lpdiaf->guidActionMap, &guid_str) != S_OK)
        return DI_SETTINGSNOTSAVED;

    FUNC6(didev.tszInstanceName, lpszUsername, guid_str);

    hkey = FUNC7(didev.tszInstanceName, lpszUsername, guid_str, TRUE);

    if (!hkey)
    {
        FUNC0(guid_str);
        return DI_SETTINGSNOTSAVED;
    }

    /* Write each of the actions mapped for this device.
       Format is "dwSemantic"="dwObjID" and key is of type REG_DWORD
    */
    for (i = 0; i < lpdiaf->dwNumActions; i++)
    {
        static const WCHAR format[] = {'%','x','\0'};
        WCHAR label[9];

        if (FUNC2(&didev.guidInstance, &lpdiaf->rgoAction[i].guidInstance) &&
            lpdiaf->rgoAction[i].dwHow != DIAH_UNMAPPED)
        {
             FUNC8(label, format, lpdiaf->rgoAction[i].dwSemantic);
             FUNC4(hkey, label, 0, REG_DWORD, (const BYTE*) &lpdiaf->rgoAction[i].dwObjID, sizeof(DWORD));
        }
    }

    FUNC3(hkey);
    FUNC0(guid_str);

    return DI_OK;
}