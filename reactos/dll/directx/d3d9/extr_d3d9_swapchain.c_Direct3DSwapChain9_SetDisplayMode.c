
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int BackBufferHeight; int BackBufferWidth; } ;
struct TYPE_5__ {int dwHeight; int dwWidth; } ;
typedef TYPE_1__ Direct3DSwapChain9_INT ;
typedef TYPE_2__ D3DPRESENT_PARAMETERS ;



VOID Direct3DSwapChain9_SetDisplayMode(Direct3DSwapChain9_INT* pThisSwapChain, D3DPRESENT_PARAMETERS* pPresentationParameters)
{
    pThisSwapChain->dwWidth = pPresentationParameters->BackBufferWidth;
    pThisSwapChain->dwHeight = pPresentationParameters->BackBufferHeight;
}
