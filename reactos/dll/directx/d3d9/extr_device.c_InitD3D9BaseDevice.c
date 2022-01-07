
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int RawDisplayFormat; int dwRefreshRate; int dwDisplayHeight; int dwDisplayWidth; } ;
struct TYPE_14__ {TYPE_2__ DriverCaps; } ;
struct TYPE_13__ {TYPE_9__* DisplayAdapters; } ;
struct TYPE_12__ {int lRefCnt; size_t AdjustedBehaviourFlags; size_t BehaviourFlags; size_t NumAdaptersInDevice; int dwDXVersion; size_t* AdapterIndexInGroup; int * pSwapChains; int * pSwapChains2; TYPE_1__* CurrentDisplayMode; int * DeviceData; int hWnd; int DeviceType; TYPE_4__* pDirect3D9; int CriticalSection; int * lpVtbl; int * pUnknown; int dwProcessId; int * pResourceManager; } ;
struct TYPE_10__ {int Format; int RefreshRate; int Height; int Width; } ;
typedef int LPVOID ;
typedef TYPE_3__* LPDIRECT3DDEVICE9_INT ;
typedef TYPE_4__* LPDIRECT3D9_INT ;
typedef int IUnknown ;
typedef int HWND ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef int D3DPRESENT_PARAMETERS ;
typedef int D3DDEVTYPE ;
typedef int D3D9ResourceManager ;


 int AlignedAlloc (int *,int) ;
 scalar_t__ CreateD3D9DeviceData (TYPE_9__*,int *) ;
 int CreateDirect3DSwapChain9 (int ,TYPE_3__*,size_t) ;
 int D3D_OK ;
 int DDERR_GENERIC ;
 int DDERR_OUTOFMEMORY ;
 int DPRINT1 (char*,...) ;
 int Direct3DDevice9HAL_Vtbl ;
 int Direct3DSwapChain9_Init (int ,int *) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int GetCurrentThreadId () ;
 int InitD3D9ResourceManager (int *,TYPE_3__*) ;
 int InitializeCriticalSection (int *) ;
 int RT_BUILTIN ;

HRESULT InitD3D9BaseDevice(LPDIRECT3DDEVICE9_INT pThisBaseDevice, LPDIRECT3D9_INT pDirect3D9,
                           UINT Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, DWORD BehaviourFlags,
                           D3DPRESENT_PARAMETERS* pPresentationParameters, DWORD NumAdaptersToCreate)
{
    D3D9ResourceManager* pResourceManager;
    DWORD i;



    if (FAILED(AlignedAlloc((LPVOID *)&pResourceManager, sizeof(D3D9ResourceManager))) ||
        FAILED(InitD3D9ResourceManager(pResourceManager, pThisBaseDevice)))
    {
        DPRINT1("Could not create resource manager");
        return DDERR_OUTOFMEMORY;
    }

    pThisBaseDevice->pResourceManager = pResourceManager;

    pThisBaseDevice->lpVtbl = &Direct3DDevice9HAL_Vtbl;
    pThisBaseDevice->lRefCnt = 1;
    pThisBaseDevice->dwProcessId = GetCurrentThreadId();
    pThisBaseDevice->pUnknown = (IUnknown*) &pThisBaseDevice->lpVtbl;
    InitializeCriticalSection(&pThisBaseDevice->CriticalSection);

    pThisBaseDevice->pDirect3D9 = pDirect3D9;
    pThisBaseDevice->DeviceType = DeviceType;
    pThisBaseDevice->hWnd = hFocusWindow;
    pThisBaseDevice->AdjustedBehaviourFlags = BehaviourFlags;
    pThisBaseDevice->BehaviourFlags = BehaviourFlags;
    pThisBaseDevice->NumAdaptersInDevice = NumAdaptersToCreate;


    pThisBaseDevice->dwDXVersion = 9;

    for (i = 0; i < NumAdaptersToCreate; i++)
    {
        if (FALSE == CreateD3D9DeviceData(&pDirect3D9->DisplayAdapters[i], &pThisBaseDevice->DeviceData[i]))
        {
            DPRINT1("Failed to get device data for adapter: %d", i);
            return DDERR_GENERIC;
        }

        pThisBaseDevice->AdapterIndexInGroup[i] = i;
        pThisBaseDevice->CurrentDisplayMode[i].Width = pDirect3D9->DisplayAdapters[i].DriverCaps.dwDisplayWidth;
        pThisBaseDevice->CurrentDisplayMode[i].Height = pDirect3D9->DisplayAdapters[i].DriverCaps.dwDisplayHeight;
        pThisBaseDevice->CurrentDisplayMode[i].RefreshRate = pDirect3D9->DisplayAdapters[i].DriverCaps.dwRefreshRate;
        pThisBaseDevice->CurrentDisplayMode[i].Format = pDirect3D9->DisplayAdapters[i].DriverCaps.RawDisplayFormat;

        pThisBaseDevice->pSwapChains[i] = CreateDirect3DSwapChain9(RT_BUILTIN, pThisBaseDevice, i);
        pThisBaseDevice->pSwapChains2[i] = pThisBaseDevice->pSwapChains[i];

        if (FAILED(Direct3DSwapChain9_Init(pThisBaseDevice->pSwapChains[i], pPresentationParameters)))
        {
            DPRINT1("Failed to init swap chain: %d", i);
            return DDERR_GENERIC;
        }
    }

    return D3D_OK;
}
