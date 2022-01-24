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
struct TYPE_2__ {int /*<<< orphan*/  fog_scale_location; int /*<<< orphan*/  fog_end_location; int /*<<< orphan*/  fog_density_location; int /*<<< orphan*/  fog_color_location; } ;
struct glsl_shader_prog_link {TYPE_1__ ps; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WINED3D_RS_FOGCOLOR ; 
 size_t WINED3D_RS_FOGDENSITY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_color*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_color color;
    float start, end, scale;
    union
    {
        DWORD d;
        float f;
    } tmpvalue;

    FUNC5(&color, state->render_states[WINED3D_RS_FOGCOLOR]);
    FUNC0(FUNC4(prog->ps.fog_color_location, 1, &color.r));
    tmpvalue.d = state->render_states[WINED3D_RS_FOGDENSITY];
    FUNC0(FUNC3(prog->ps.fog_density_location, tmpvalue.f));
    FUNC2(context, state, &start, &end);
    scale = 1.0f / (end - start);
    FUNC0(FUNC3(prog->ps.fog_end_location, end));
    FUNC0(FUNC3(prog->ps.fog_scale_location, scale));
    FUNC1("fog emulation uniforms");
}