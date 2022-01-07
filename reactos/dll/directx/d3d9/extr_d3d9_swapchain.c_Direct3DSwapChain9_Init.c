
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int SwapEffect; } ;
struct TYPE_11__ {int* red; int* green; int* blue; } ;
struct TYPE_12__ {size_t ChainIndex; int * pCursor; int BaseObject; TYPE_3__ PresentParameters; int SwapEffect; TYPE_1__ GammaRamp; } ;
typedef int HRESULT ;
typedef TYPE_2__ Direct3DSwapChain9_INT ;
typedef int DIRECT3DDEVICE9_INT ;
typedef TYPE_3__ D3DPRESENT_PARAMETERS ;


 int * CreateD3D9Cursor (int *,TYPE_2__*) ;
 int D3D9BaseObject_GetDeviceInt (int *,int **) ;
 int DDERR_GENERIC ;
 int DDERR_OUTOFMEMORY ;
 int DPRINT1 (char*) ;
 int Direct3DSwapChain9_Reset (TYPE_2__*,TYPE_3__*) ;
 int Direct3DSwapChain9_SetDisplayMode (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ FAILED (int ) ;

HRESULT Direct3DSwapChain9_Init(Direct3DSwapChain9_INT* pThisSwapChain, D3DPRESENT_PARAMETERS* pPresentationParameters)
{
    int i;
    DIRECT3DDEVICE9_INT* pDevice;

    for (i = 0; i < 256; i++)
    {
        pThisSwapChain->GammaRamp.red[i] =
            pThisSwapChain->GammaRamp.green[i] =
            pThisSwapChain->GammaRamp.blue[i] = i;
    }

    pThisSwapChain->PresentParameters = pPresentationParameters[pThisSwapChain->ChainIndex];
    pThisSwapChain->SwapEffect = pPresentationParameters->SwapEffect;
    Direct3DSwapChain9_SetDisplayMode(pThisSwapChain, &pThisSwapChain->PresentParameters);

    if (FAILED(D3D9BaseObject_GetDeviceInt(&pThisSwapChain->BaseObject, &pDevice)))
    {
        DPRINT1("Could not get the swapchain device");
        return DDERR_GENERIC;
    }

    pThisSwapChain->pCursor = CreateD3D9Cursor(pDevice, pThisSwapChain);
    if (((void*)0) == pThisSwapChain->pCursor)
    {
        DPRINT1("Could not allocate D3D9Cursor");
        return DDERR_OUTOFMEMORY;
    }

    return Direct3DSwapChain9_Reset(pThisSwapChain, pPresentationParameters);
}
