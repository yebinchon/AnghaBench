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
struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * sync; } ;
struct wined3d_fence {int /*<<< orphan*/  entry; struct wined3d_context* context; TYPE_1__ object; } ;
struct wined3d_context {int free_fence_count; int /*<<< orphan*/  fences; TYPE_1__* free_fences; struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 size_t APPLE_FENCE ; 
 size_t ARB_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NV_FENCE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_context*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(struct wined3d_context *context, struct wined3d_fence *fence)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_fence_count)
    {
        fence->object = context->free_fences[--context->free_fence_count];
    }
    else
    {
        if (gl_info->supported[ARB_SYNC])
        {
            /* Using ARB_sync, not much to do here. */
            fence->object.sync = NULL;
            FUNC1("Allocated sync object in context %p.\n", context);
        }
        else if (gl_info->supported[APPLE_FENCE])
        {
            FUNC0(FUNC4(1, &fence->object.id));
            FUNC3("glGenFencesAPPLE");

            FUNC1("Allocated fence %u in context %p.\n", fence->object.id, context);
        }
        else if(gl_info->supported[NV_FENCE])
        {
            FUNC0(FUNC5(1, &fence->object.id));
            FUNC3("glGenFencesNV");

            FUNC1("Allocated fence %u in context %p.\n", fence->object.id, context);
        }
        else
        {
            FUNC2("Fences not supported, not allocating fence.\n");
            fence->object.id = 0;
        }
    }

    fence->context = context;
    FUNC6(&context->fences, &fence->entry);
}