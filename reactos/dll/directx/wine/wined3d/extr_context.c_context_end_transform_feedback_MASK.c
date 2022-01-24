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
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {scalar_t__ transform_feedback_paused; scalar_t__ transform_feedback_active; struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    if (context->transform_feedback_active)
    {
        FUNC0(FUNC2());
        FUNC1("glEndTransformFeedback");
        context->transform_feedback_active = 0;
        context->transform_feedback_paused = 0;
    }
}