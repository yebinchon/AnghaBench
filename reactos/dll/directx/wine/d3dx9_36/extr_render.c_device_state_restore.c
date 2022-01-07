
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_state {unsigned int num_render_targets; int viewport; int * depth_stencil; int ** render_targets; } ;
typedef int IDirect3DDevice9 ;


 int IDirect3DDevice9_SetDepthStencilSurface (int *,int *) ;
 int IDirect3DDevice9_SetRenderTarget (int *,unsigned int,int *) ;
 int IDirect3DDevice9_SetViewport (int *,int *) ;
 int IDirect3DSurface9_Release (int *) ;

__attribute__((used)) static void device_state_restore(IDirect3DDevice9 *device, struct device_state *state)
{
    unsigned int i;

    for (i = 0; i < state->num_render_targets; i++)
    {
        IDirect3DDevice9_SetRenderTarget(device, i, state->render_targets[i]);
        if (state->render_targets[i])
            IDirect3DSurface9_Release(state->render_targets[i]);
        state->render_targets[i] = ((void*)0);
    }

    IDirect3DDevice9_SetDepthStencilSurface(device, state->depth_stencil);
    if (state->depth_stencil)
    {
        IDirect3DSurface9_Release(state->depth_stencil);
        state->depth_stencil = ((void*)0);
    }

    IDirect3DDevice9_SetViewport(device, &state->viewport);
}
