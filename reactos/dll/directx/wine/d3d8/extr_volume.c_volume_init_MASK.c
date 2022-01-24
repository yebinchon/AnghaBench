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
struct d3d8_volume {unsigned int sub_resource_idx; struct wined3d_texture* wined3d_texture; int /*<<< orphan*/  texture; TYPE_2__ resource; TYPE_1__ IDirect3DVolume8_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  d3d8_volume_vtbl ; 
 struct wined3d_parent_ops d3d8_volume_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_texture*) ; 

void FUNC2(struct d3d8_volume *volume, struct wined3d_texture *wined3d_texture,
        unsigned int sub_resource_idx, const struct wined3d_parent_ops **parent_ops)
{
    volume->IDirect3DVolume8_iface.lpVtbl = &d3d8_volume_vtbl;
    FUNC0(&volume->resource);
    volume->resource.refcount = 0;
    volume->texture = FUNC1(wined3d_texture);
    volume->wined3d_texture = wined3d_texture;
    volume->sub_resource_idx = sub_resource_idx;

    *parent_ops = &d3d8_volume_wined3d_parent_ops;
}