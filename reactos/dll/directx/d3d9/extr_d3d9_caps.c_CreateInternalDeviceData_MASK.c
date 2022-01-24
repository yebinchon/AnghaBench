#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hDirectDrawLocal; int /*<<< orphan*/  bForceDriverFlagsOff; int /*<<< orphan*/  bForceDriverFlagsOn; scalar_t__ DeviceType; int /*<<< orphan*/  szDeviceName; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;
typedef  scalar_t__ D3DDEVTYPE ;
typedef  TYPE_1__ D3D9_Unknown6BC ;

/* Variables and functions */
 int /*<<< orphan*/  CCHDEVICENAME ; 
 scalar_t__ D3DDEVTYPE_HAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIMPLEMENTED ; 
 int /*<<< orphan*/  g_NumDevices ; 

__attribute__((used)) static void FUNC7(HDC hDC, LPCSTR lpszDeviceName, D3D9_Unknown6BC** ppUnknown, D3DDEVTYPE DeviceType, HMODULE* hD3DRefDll)
{
    D3D9_Unknown6BC* pUnknown6BC;
    DWORD ValueSize;

    if (ppUnknown) *ppUnknown = NULL;
    if (hD3DRefDll) *hD3DRefDll = NULL;

    if (DeviceType != D3DDEVTYPE_HAL)
    {
        /* TODO: Implement D3DDEVTYPE_REF and D3DDEVTYPE_SW */
        UNIMPLEMENTED;
        return;
    }

    pUnknown6BC = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(D3D9_Unknown6BC));
    if (NULL == pUnknown6BC)
    {
        FUNC0("Out of memory");
        return;
    }

    pUnknown6BC->hDirectDrawLocal = FUNC4(hDC);
    if (0 == pUnknown6BC->hDirectDrawLocal)
    {
        FUNC3(FUNC1(), 0, pUnknown6BC);
        return;
    }


    FUNC6(pUnknown6BC->szDeviceName, CCHDEVICENAME, lpszDeviceName);
    //pUnknown6BC->DeviceUniq = DdQueryDisplaySettingsUniqueness();
    pUnknown6BC->DeviceType = DeviceType;


    ValueSize = sizeof(DWORD);
    FUNC5(REG_DWORD, "ForceDriverFlagsOn", (LPBYTE)&pUnknown6BC->bForceDriverFlagsOn, &ValueSize);

    ValueSize = sizeof(DWORD);
    FUNC5(REG_DWORD, "ForceDriverFlagsOff", (LPBYTE)&pUnknown6BC->bForceDriverFlagsOff, &ValueSize);

    ++g_NumDevices;

    *ppUnknown = pUnknown6BC;
}