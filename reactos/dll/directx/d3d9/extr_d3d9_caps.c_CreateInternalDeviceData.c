
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hDirectDrawLocal; int bForceDriverFlagsOff; int bForceDriverFlagsOn; scalar_t__ DeviceType; int szDeviceName; } ;
typedef int LPCSTR ;
typedef int LPBYTE ;
typedef int * HMODULE ;
typedef int HDC ;
typedef int DWORD ;
typedef scalar_t__ D3DDEVTYPE ;
typedef TYPE_1__ D3D9_Unknown6BC ;


 int CCHDEVICENAME ;
 scalar_t__ D3DDEVTYPE_HAL ;
 int DPRINT1 (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ OsThunkDdCreateDirectDrawObject (int ) ;
 int REG_DWORD ;
 int ReadRegistryValue (int ,char*,int ,int*) ;
 int SafeCopyString (int ,int ,int ) ;
 int UNIMPLEMENTED ;
 int g_NumDevices ;

__attribute__((used)) static void CreateInternalDeviceData(HDC hDC, LPCSTR lpszDeviceName, D3D9_Unknown6BC** ppUnknown, D3DDEVTYPE DeviceType, HMODULE* hD3DRefDll)
{
    D3D9_Unknown6BC* pUnknown6BC;
    DWORD ValueSize;

    if (ppUnknown) *ppUnknown = ((void*)0);
    if (hD3DRefDll) *hD3DRefDll = ((void*)0);

    if (DeviceType != D3DDEVTYPE_HAL)
    {

        UNIMPLEMENTED;
        return;
    }

    pUnknown6BC = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(D3D9_Unknown6BC));
    if (((void*)0) == pUnknown6BC)
    {
        DPRINT1("Out of memory");
        return;
    }

    pUnknown6BC->hDirectDrawLocal = OsThunkDdCreateDirectDrawObject(hDC);
    if (0 == pUnknown6BC->hDirectDrawLocal)
    {
        HeapFree(GetProcessHeap(), 0, pUnknown6BC);
        return;
    }


    SafeCopyString(pUnknown6BC->szDeviceName, CCHDEVICENAME, lpszDeviceName);

    pUnknown6BC->DeviceType = DeviceType;


    ValueSize = sizeof(DWORD);
    ReadRegistryValue(REG_DWORD, "ForceDriverFlagsOn", (LPBYTE)&pUnknown6BC->bForceDriverFlagsOn, &ValueSize);

    ValueSize = sizeof(DWORD);
    ReadRegistryValue(REG_DWORD, "ForceDriverFlagsOff", (LPBYTE)&pUnknown6BC->bForceDriverFlagsOff, &ValueSize);

    ++g_NumDevices;

    *ppUnknown = pUnknown6BC;
}
