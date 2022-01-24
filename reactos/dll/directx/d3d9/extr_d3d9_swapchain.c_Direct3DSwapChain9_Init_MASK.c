#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  SwapEffect; } ;
struct TYPE_11__ {int* red; int* green; int* blue; } ;
struct TYPE_12__ {size_t ChainIndex; int /*<<< orphan*/ * pCursor; int /*<<< orphan*/  BaseObject; TYPE_3__ PresentParameters; int /*<<< orphan*/  SwapEffect; TYPE_1__ GammaRamp; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ Direct3DSwapChain9_INT ;
typedef  int /*<<< orphan*/  DIRECT3DDEVICE9_INT ;
typedef  TYPE_3__ D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DDERR_GENERIC ; 
 int /*<<< orphan*/  DDERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

HRESULT FUNC6(Direct3DSwapChain9_INT* pThisSwapChain, D3DPRESENT_PARAMETERS* pPresentationParameters)
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
    FUNC4(pThisSwapChain, &pThisSwapChain->PresentParameters);
    
    if (FUNC5(FUNC1(&pThisSwapChain->BaseObject, &pDevice)))
    {
        FUNC2("Could not get the swapchain device");
        return DDERR_GENERIC;
    }

    pThisSwapChain->pCursor = FUNC0(pDevice, pThisSwapChain);
    if (NULL == pThisSwapChain->pCursor)
    {
        FUNC2("Could not allocate D3D9Cursor");
        return DDERR_OUTOFMEMORY;
    }

    return FUNC3(pThisSwapChain, pPresentationParameters);
}