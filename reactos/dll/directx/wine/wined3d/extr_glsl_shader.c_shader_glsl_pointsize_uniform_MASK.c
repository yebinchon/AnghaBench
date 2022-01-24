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
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  pointsize_q_att_location; int /*<<< orphan*/  pointsize_l_att_location; int /*<<< orphan*/  pointsize_c_att_location; int /*<<< orphan*/  pointsize_location; int /*<<< orphan*/  pointsize_max_location; int /*<<< orphan*/  pointsize_min_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    float min, max;
    float size, att[3];

    FUNC3(context, state, &min, &max);

    FUNC0(FUNC4(prog->vs.pointsize_min_location, min));
    FUNC1("glUniform1f");
    FUNC0(FUNC4(prog->vs.pointsize_max_location, max));
    FUNC1("glUniform1f");

    FUNC2(context, state, &size, att);

    FUNC0(FUNC4(prog->vs.pointsize_location, size));
    FUNC1("glUniform1f");
    FUNC0(FUNC4(prog->vs.pointsize_c_att_location, att[0]));
    FUNC1("glUniform1f");
    FUNC0(FUNC4(prog->vs.pointsize_l_att_location, att[1]));
    FUNC1("glUniform1f");
    FUNC0(FUNC4(prog->vs.pointsize_q_att_location, att[2]));
    FUNC1("glUniform1f");
}