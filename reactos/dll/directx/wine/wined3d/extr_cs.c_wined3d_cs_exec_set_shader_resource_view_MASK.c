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
struct wined3d_shader_resource_view {TYPE_2__* resource; } ;
struct wined3d_cs_set_shader_resource_view {size_t type; size_t view_idx; struct wined3d_shader_resource_view* view; } ;
struct TYPE_3__ {struct wined3d_shader_resource_view*** shader_resource_view; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  bind_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATE_COMPUTE_SHADER_RESOURCE_BINDING ; 
 int /*<<< orphan*/  STATE_GRAPHICS_SHADER_RESOURCE_BINDING ; 
 size_t WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_shader_resource_view *op = data;
    struct wined3d_shader_resource_view *prev;

    prev = cs->state.shader_resource_view[op->type][op->view_idx];
    cs->state.shader_resource_view[op->type][op->view_idx] = op->view;

    if (op->view)
        FUNC1(&op->view->resource->bind_count);
    if (prev)
        FUNC0(&prev->resource->bind_count);

    if (op->type != WINED3D_SHADER_TYPE_COMPUTE)
        FUNC2(cs->device, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
    else
        FUNC2(cs->device, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
}