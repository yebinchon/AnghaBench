
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int GammaRamp; } ;
typedef TYPE_1__ Direct3DSwapChain9_INT ;
typedef int D3DGAMMARAMP ;


 int memcpy (int *,int *,int) ;

VOID Direct3DSwapChain9_GetGammaRamp(Direct3DSwapChain9_INT* pThisSwapChain, D3DGAMMARAMP* pRamp)
{
    memcpy(pRamp, &pThisSwapChain->GammaRamp, sizeof(D3DGAMMARAMP));
}
