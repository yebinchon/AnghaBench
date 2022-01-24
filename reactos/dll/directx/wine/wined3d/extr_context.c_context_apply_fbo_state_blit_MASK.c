#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_surface {TYPE_1__* container; } ;
struct wined3d_context {TYPE_2__* blit_targets; } ;
struct TYPE_5__ {int layer_count; int /*<<< orphan*/  sub_resource_idx; int /*<<< orphan*/ * resource; } ;
struct TYPE_4__ {int /*<<< orphan*/  resource; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_context*,int /*<<< orphan*/ ,TYPE_2__*,struct wined3d_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_surface*) ; 

void FUNC3(struct wined3d_context *context, GLenum target,
        struct wined3d_surface *render_target, struct wined3d_surface *depth_stencil, DWORD location)
{
    FUNC1(context->blit_targets, 0, sizeof(context->blit_targets));
    if (render_target)
    {
        context->blit_targets[0].resource = &render_target->container->resource;
        context->blit_targets[0].sub_resource_idx = FUNC2(render_target);
        context->blit_targets[0].layer_count = 1;
    }
    FUNC0(context, target, context->blit_targets, depth_stencil, location, location);
}