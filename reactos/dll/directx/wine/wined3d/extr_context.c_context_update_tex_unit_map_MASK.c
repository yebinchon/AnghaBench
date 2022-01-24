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
struct wined3d_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ graphics_samplers; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ MAX_COMBINED_SAMPLERS ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_context*,struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,scalar_t__,struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,struct wined3d_state const*) ; 
 scalar_t__ FUNC4 (struct wined3d_state const*) ; 
 scalar_t__ FUNC5 (struct wined3d_state const*) ; 

__attribute__((used)) static void FUNC6(struct wined3d_context *context, const struct wined3d_state *state)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL vs = FUNC5(state);
    BOOL ps = FUNC4(state);

    if (!ps)
        FUNC3(context, state);

    /* Try to go for a 1:1 mapping of the samplers when possible. Pixel shaders
     * need a 1:1 map at the moment.
     * When the mapping of a stage is changed, sampler and ALL texture stage
     * states have to be reset. */

    if (gl_info->limits.graphics_samplers >= MAX_COMBINED_SAMPLERS)
        return;

    if (ps)
        FUNC1(context, state);
    else
        FUNC0(context, state);

    if (vs)
        FUNC2(context, ps, state);
}