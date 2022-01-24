#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_state {int num_render_targets; int /*<<< orphan*/ * depth_stencil; int /*<<< orphan*/ ** render_targets; } ;
struct TYPE_3__ {int NumSimultaneousRTs; } ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DCAPS9 ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC4(IDirect3DDevice9 *device, struct device_state *state)
{
    HRESULT hr;
    D3DCAPS9 caps;
    unsigned int i;

    hr = FUNC3(device, &caps);
    if (FUNC0(hr)) return hr;

    state->num_render_targets = caps.NumSimultaneousRTs;
    state->render_targets = FUNC2(FUNC1(), 0,
        state->num_render_targets * sizeof(IDirect3DSurface9 *));
    if (!state->render_targets)
        return E_OUTOFMEMORY;

    for (i = 0; i < state->num_render_targets; i++)
        state->render_targets[i] = NULL;
    state->depth_stencil = NULL;
    return D3D_OK;
}