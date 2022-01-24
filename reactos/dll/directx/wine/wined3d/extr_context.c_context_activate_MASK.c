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
struct wined3d_texture {int dummy; } ;
struct wined3d_context {scalar_t__ needs_set; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*) ; 
 struct wined3d_context* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*) ; 

__attribute__((used)) static void FUNC7(struct wined3d_context *context,
        struct wined3d_texture *texture, unsigned int sub_resource_idx)
{
    FUNC1(context);
    FUNC6(context);
    FUNC5(context, texture, sub_resource_idx);
    if (!context->valid)
        return;

    if (context != FUNC2())
    {
        if (!FUNC3(context))
            FUNC0("Failed to activate the new context.\n");
    }
    else if (context->needs_set)
    {
        FUNC4(context);
    }
}