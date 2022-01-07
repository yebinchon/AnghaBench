
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDirect3DDevice9 {int dummy; } ;
typedef int UINT ;
typedef int LPVOID ;
typedef int LPDIRECT3DDEVICE9_INT ;
typedef int LPDIRECT3D9_INT ;
typedef int HWND ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DPRESENT_PARAMETERS ;
typedef int D3D9HALDEVICE ;


 int AlignedAlloc (int *,int) ;
 int AlignedFree (int ) ;
 int D3DDEVTYPE_HAL ;
 int D3D_OK ;
 int DDERR_OUTOFMEMORY ;
 int DPRINT1 (char*) ;
 scalar_t__ FAILED (int ) ;
 int InitD3D9BaseDevice (int ,int ,int ,int ,int ,int ,int *,int ) ;

HRESULT CreateD3D9HalDevice(LPDIRECT3D9_INT pDirect3D9, UINT Adapter,
                            HWND hFocusWindow, DWORD BehaviourFlags,
                            D3DPRESENT_PARAMETERS* pPresentationParameters,
                            DWORD NumAdaptersToCreate,
                            struct IDirect3DDevice9** ppReturnedDeviceInterface)
{
    HRESULT Ret;

    if (FAILED(AlignedAlloc((LPVOID *)ppReturnedDeviceInterface, sizeof(D3D9HALDEVICE))))
    {
        DPRINT1("Not enough memory to create HAL device");
        return DDERR_OUTOFMEMORY;
    }

    Ret = InitD3D9BaseDevice((LPDIRECT3DDEVICE9_INT)*ppReturnedDeviceInterface, pDirect3D9, Adapter,
                             D3DDEVTYPE_HAL, hFocusWindow, BehaviourFlags,
                             pPresentationParameters, NumAdaptersToCreate);

    if (FAILED(Ret))
    {
        AlignedFree((LPVOID)*ppReturnedDeviceInterface);
        return Ret;
    }

    return D3D_OK;
}
