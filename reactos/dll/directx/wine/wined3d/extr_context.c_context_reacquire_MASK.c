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
struct wined3d_device {int /*<<< orphan*/  cs; } ;
struct TYPE_2__ {int /*<<< orphan*/  sub_resource_idx; scalar_t__ texture; } ;
struct wined3d_context {scalar_t__ tid; TYPE_1__ current_rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_context*,struct wined3d_context*) ; 
 scalar_t__ FUNC1 () ; 
 struct wined3d_context* FUNC2 (struct wined3d_device const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct wined3d_context *FUNC5(const struct wined3d_device *device,
        struct wined3d_context *context)
{
    struct wined3d_context *acquired_context;

    FUNC4(device->cs);

    if (!context || context->tid != FUNC1())
        return NULL;

    if (context->current_rt.texture)
    {
        FUNC3(context, context->current_rt.texture, context->current_rt.sub_resource_idx);
        return context;
    }

    acquired_context = FUNC2(device, NULL, 0);
    if (acquired_context != context)
        FUNC0("Acquired context %p instead of %p.\n", acquired_context, context);
    return acquired_context;
}