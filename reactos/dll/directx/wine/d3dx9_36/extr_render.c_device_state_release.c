
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_state {unsigned int num_render_targets; scalar_t__ depth_stencil; scalar_t__* render_targets; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int IDirect3DSurface9_Release (scalar_t__) ;

__attribute__((used)) static void device_state_release(struct device_state *state)
{
    unsigned int i;

    for (i = 0; i < state->num_render_targets; i++)
    {
        if (state->render_targets[i])
            IDirect3DSurface9_Release(state->render_targets[i]);
    }

    HeapFree(GetProcessHeap(), 0, state->render_targets);

    if (state->depth_stencil) IDirect3DSurface9_Release(state->depth_stencil);
}
