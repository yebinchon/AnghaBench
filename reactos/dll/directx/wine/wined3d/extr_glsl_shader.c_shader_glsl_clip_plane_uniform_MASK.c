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
struct wined3d_vec4 {int /*<<< orphan*/  x; } ;
struct wined3d_state {int /*<<< orphan*/ * transforms; struct wined3d_vec4* clip_planes; } ;
struct wined3d_matrix {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {scalar_t__ clip_planes_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WINED3D_TS_VIEW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_matrix*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_vec4*,struct wined3d_vec4*,struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_matrix*,struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_state const*) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int index, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_matrix matrix;
    struct wined3d_vec4 plane;

    plane = state->clip_planes[index];

    /* Clip planes are affected by the view transform in d3d for FFP draws. */
    if (!FUNC5(state))
    {
        FUNC2(&matrix, &state->transforms[WINED3D_TS_VIEW]);
        FUNC4(&matrix, &matrix);
        FUNC3(&plane, &plane, &matrix);
    }

    FUNC0(FUNC1(prog->vs.clip_planes_location + index, 1, &plane.x));
}