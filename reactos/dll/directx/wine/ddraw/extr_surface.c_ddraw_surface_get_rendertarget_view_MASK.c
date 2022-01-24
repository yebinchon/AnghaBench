#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_rendertarget_view {int dummy; } ;
struct ddraw_surface {struct wined3d_rendertarget_view* wined3d_rtv; int /*<<< orphan*/  sub_resource_idx; int /*<<< orphan*/  wined3d_texture; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ddraw_view_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ddraw_surface*,int /*<<< orphan*/ *,struct wined3d_rendertarget_view**) ; 

struct wined3d_rendertarget_view *FUNC3(struct ddraw_surface *surface)
{
    HRESULT hr;

    if (surface->wined3d_rtv)
        return surface->wined3d_rtv;

    if (FUNC1(hr = FUNC2(surface->wined3d_texture,
            surface->sub_resource_idx, surface, &ddraw_view_wined3d_parent_ops, &surface->wined3d_rtv)))
    {
        FUNC0("Failed to create rendertarget view, hr %#x.\n", hr);
        return NULL;
    }

    return surface->wined3d_rtv;
}