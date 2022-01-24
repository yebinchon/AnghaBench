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
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {int transform_feedback_paused; int /*<<< orphan*/  transform_feedback_active; struct wined3d_gl_info* gl_info; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t ARB_TRANSFORM_FEEDBACK2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct wined3d_context *context, BOOL force)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!context->transform_feedback_active || context->transform_feedback_paused)
        return;

    if (gl_info->supported[ARB_TRANSFORM_FEEDBACK2])
    {
        FUNC0(FUNC4());
        FUNC2("glPauseTransformFeedback");
        context->transform_feedback_paused = 1;
        return;
    }

    FUNC1("Cannot pause transform feedback operations.\n");

    if (force)
        FUNC3(context);
}