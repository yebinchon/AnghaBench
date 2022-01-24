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
struct wined3d_rendertarget_view {int dummy; } ;
struct d3d9_surface {struct wined3d_rendertarget_view* wined3d_rtv; int /*<<< orphan*/  rtv_entry; TYPE_1__* texture; int /*<<< orphan*/  IDirect3DSurface9_iface; int /*<<< orphan*/  sub_resource_idx; int /*<<< orphan*/  wined3d_texture; } ;
struct TYPE_2__ {int /*<<< orphan*/  rtv_list; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3d9_view_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3d9_surface*,int /*<<< orphan*/ *,struct wined3d_rendertarget_view**) ; 

struct wined3d_rendertarget_view *FUNC6(struct d3d9_surface *surface)
{
    HRESULT hr;

    /* The surface reference count can be equal to 0 when this function is
     * called. In order to properly manage the render target view reference
     * count, we temporarily increment the surface reference count. */
    FUNC2(&surface->IDirect3DSurface9_iface);

    if (surface->wined3d_rtv)
        return surface->wined3d_rtv;

    if (FUNC1(hr = FUNC5(surface->wined3d_texture,
            surface->sub_resource_idx, surface, &d3d9_view_wined3d_parent_ops, &surface->wined3d_rtv)))
    {
        FUNC0("Failed to create rendertarget view, hr %#x.\n", hr);
        FUNC3(&surface->IDirect3DSurface9_iface);
        return NULL;
    }

    if (surface->texture)
        FUNC4(&surface->texture->rtv_list, &surface->rtv_entry);

    return surface->wined3d_rtv;
}