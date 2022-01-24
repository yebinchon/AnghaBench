#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_texture {int dummy; } ;
struct wined3d_parent_ops {int dummy; } ;
struct TYPE_4__ {scalar_t__ refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_surface {unsigned int sub_resource_idx; int /*<<< orphan*/  texture; scalar_t__ container; struct wined3d_texture* wined3d_texture; int /*<<< orphan*/  rtv_entry; TYPE_2__ resource; TYPE_1__ IDirect3DSurface9_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DBaseTexture9 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  d3d9_surface_vtbl ; 
 struct wined3d_parent_ops d3d9_surface_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct wined3d_texture*) ; 

void FUNC7(struct d3d9_surface *surface, struct wined3d_texture *wined3d_texture,
        unsigned int sub_resource_idx, const struct wined3d_parent_ops **parent_ops)
{
    IDirect3DBaseTexture9 *texture;

    surface->IDirect3DSurface9_iface.lpVtbl = &d3d9_surface_vtbl;
    FUNC3(&surface->resource);
    surface->resource.refcount = 0;
    FUNC4(&surface->rtv_entry);
    surface->container = FUNC6(wined3d_texture);
    surface->wined3d_texture = wined3d_texture;
    surface->sub_resource_idx = sub_resource_idx;

    if (surface->container && FUNC2(FUNC1(surface->container,
            &IID_IDirect3DBaseTexture9, (void **)&texture)))
    {
        surface->texture = FUNC5(texture);
        FUNC0(texture);
    }

    *parent_ops = &d3d9_surface_wined3d_parent_ops;
}