
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_state {int num_render_targets; int * depth_stencil; int ** render_targets; } ;
struct TYPE_3__ {int NumSimultaneousRTs; } ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef TYPE_1__ D3DCAPS9 ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int ** HeapAlloc (int ,int ,int) ;
 int IDirect3DDevice9_GetDeviceCaps (int *,TYPE_1__*) ;

__attribute__((used)) static HRESULT device_state_init(IDirect3DDevice9 *device, struct device_state *state)
{
    HRESULT hr;
    D3DCAPS9 caps;
    unsigned int i;

    hr = IDirect3DDevice9_GetDeviceCaps(device, &caps);
    if (FAILED(hr)) return hr;

    state->num_render_targets = caps.NumSimultaneousRTs;
    state->render_targets = HeapAlloc(GetProcessHeap(), 0,
        state->num_render_targets * sizeof(IDirect3DSurface9 *));
    if (!state->render_targets)
        return E_OUTOFMEMORY;

    for (i = 0; i < state->num_render_targets; i++)
        state->render_targets[i] = ((void*)0);
    state->depth_stencil = ((void*)0);
    return D3D_OK;
}
