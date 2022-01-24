#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_stateblock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_stateblock {int refcount; int /*<<< orphan*/ * parent_device; struct wined3d_stateblock* wined3d_stateblock; TYPE_1__ IDirect3DStateBlock9_iface; } ;
struct d3d9_device {int /*<<< orphan*/  IDirect3DDevice9Ex_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  enum wined3d_stateblock_type { ____Placeholder_wined3d_stateblock_type } wined3d_stateblock_type ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ D3DSTATEBLOCKTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d3d9_stateblock_vtbl ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct wined3d_stateblock**) ; 

HRESULT FUNC6(struct d3d9_stateblock *stateblock, struct d3d9_device *device,
        D3DSTATEBLOCKTYPE type, struct wined3d_stateblock *wined3d_stateblock)
{
    HRESULT hr;

    stateblock->IDirect3DStateBlock9_iface.lpVtbl = &d3d9_stateblock_vtbl;
    stateblock->refcount = 1;

    if (wined3d_stateblock)
    {
        stateblock->wined3d_stateblock = wined3d_stateblock;
    }
    else
    {
        FUNC3();
        hr = FUNC5(device->wined3d_device,
                (enum wined3d_stateblock_type)type, &stateblock->wined3d_stateblock);
        FUNC4();
        if (FUNC0(hr))
        {
            FUNC2("Failed to create wined3d stateblock, hr %#x.\n", hr);
            return hr;
        }
    }

    stateblock->parent_device = &device->IDirect3DDevice9Ex_iface;
    FUNC1(stateblock->parent_device);

    return D3D_OK;
}