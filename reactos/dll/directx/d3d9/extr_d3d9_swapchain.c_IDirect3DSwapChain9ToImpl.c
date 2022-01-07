
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * LPDIRECT3DSWAPCHAIN9_INT ;
typedef int * LPDIRECT3DSWAPCHAIN9 ;


 int Direct3DSwapChain9_INT ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpVtbl ;

LPDIRECT3DSWAPCHAIN9_INT IDirect3DSwapChain9ToImpl(LPDIRECT3DSWAPCHAIN9 iface)
{
    if (((void*)0) == iface)
        return ((void*)0);

    return (LPDIRECT3DSWAPCHAIN9_INT)((ULONG_PTR)iface - FIELD_OFFSET(Direct3DSwapChain9_INT, lpVtbl));
}
