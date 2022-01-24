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
struct wined3d_state {int /*<<< orphan*/ * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int /*<<< orphan*/  r; } ;
struct TYPE_2__ {int /*<<< orphan*/  light_ambient_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WINED3D_RS_AMBIENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_color*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_color color;

    FUNC3(&color, state->render_states[WINED3D_RS_AMBIENT]);
    FUNC0(FUNC2(prog->vs.light_ambient_location, 1, &color.r));
    FUNC1("glUniform3fv");
}