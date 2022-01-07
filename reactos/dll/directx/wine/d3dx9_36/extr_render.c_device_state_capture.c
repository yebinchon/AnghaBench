
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_state {unsigned int num_render_targets; int * depth_stencil; int ** render_targets; int viewport; } ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_GetDepthStencilSurface (int *,int **) ;
 int IDirect3DDevice9_GetRenderTarget (int *,unsigned int,int **) ;
 int IDirect3DDevice9_GetViewport (int *,int *) ;

__attribute__((used)) static void device_state_capture(IDirect3DDevice9 *device, struct device_state *state)
{
    HRESULT hr;
    unsigned int i;

    IDirect3DDevice9_GetViewport(device, &state->viewport);

    for (i = 0; i < state->num_render_targets; i++)
    {
        hr = IDirect3DDevice9_GetRenderTarget(device, i, &state->render_targets[i]);
        if (FAILED(hr)) state->render_targets[i] = ((void*)0);
    }

    hr = IDirect3DDevice9_GetDepthStencilSurface(device, &state->depth_stencil);
    if (FAILED(hr)) state->depth_stencil = ((void*)0);
}
