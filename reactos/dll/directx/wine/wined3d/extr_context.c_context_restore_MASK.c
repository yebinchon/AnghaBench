#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_surface {TYPE_3__* container; } ;
struct TYPE_4__ {scalar_t__ sub_resource_idx; TYPE_3__* texture; } ;
struct wined3d_context {TYPE_1__ current_rt; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_2__ resource; } ;

/* Variables and functions */
 struct wined3d_context* FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*) ; 
 scalar_t__ FUNC2 (struct wined3d_surface*) ; 

void FUNC3(struct wined3d_context *context, struct wined3d_surface *restore)
{
    if (context->current_rt.texture != restore->container
            || context->current_rt.sub_resource_idx != FUNC2(restore))
    {
        FUNC1(context);
        context = FUNC0(restore->container->resource.device,
                restore->container, FUNC2(restore));
    }

    FUNC1(context);
}