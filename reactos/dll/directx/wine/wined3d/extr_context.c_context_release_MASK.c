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
struct wined3d_context {int needs_set; int /*<<< orphan*/  device; scalar_t__ destroy_delayed; int /*<<< orphan*/ * restore_dc; int /*<<< orphan*/ * restore_ctx; int /*<<< orphan*/  gl_info; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_context*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wined3d_context*) ; 
 struct wined3d_context* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct wined3d_context*) ; 
 int /*<<< orphan*/  d3d ; 

void FUNC7(struct wined3d_context *context)
{
    FUNC0("Releasing context %p, level %u.\n", context, context->level);

    if (FUNC2(d3d))
    {
        if (!context->level)
            FUNC1("Context %p is not active.\n", context);
        else if (context != FUNC4())
            FUNC1("Context %p is not the current context.\n", context);
    }

    if (!--context->level)
    {
        if (FUNC6(context))
            context->needs_set = 1;
        if (context->restore_ctx)
        {
            FUNC0("Restoring GL context %p on device context %p.\n", context->restore_ctx, context->restore_dc);
            FUNC5(context->gl_info, context->restore_dc, context->restore_ctx);
            context->restore_ctx = NULL;
            context->restore_dc = NULL;
        }

        if (context->destroy_delayed)
        {
            FUNC0("Destroying context %p.\n", context);
            FUNC3(context->device, context);
        }
    }
}