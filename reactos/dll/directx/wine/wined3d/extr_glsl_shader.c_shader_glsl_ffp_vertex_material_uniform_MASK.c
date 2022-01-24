#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {float const r; } ;
struct TYPE_9__ {float const r; } ;
struct TYPE_8__ {float const r; } ;
struct TYPE_7__ {float const r; } ;
struct TYPE_12__ {TYPE_5__ emissive; TYPE_3__ diffuse; TYPE_2__ ambient; int /*<<< orphan*/  power; TYPE_1__ specular; } ;
struct wined3d_state {TYPE_6__ material; scalar_t__* render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  material_emissive_location; int /*<<< orphan*/  material_diffuse_location; int /*<<< orphan*/  material_ambient_location; int /*<<< orphan*/  material_specular_location; int /*<<< orphan*/  material_shininess_location; } ;
struct glsl_shader_prog_link {TYPE_4__ vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WINED3D_RS_SPECULARENABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,float const*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (state->render_states[WINED3D_RS_SPECULARENABLE])
    {
        FUNC0(FUNC3(prog->vs.material_specular_location, 1, &state->material.specular.r));
        FUNC0(FUNC2(prog->vs.material_shininess_location, state->material.power));
    }
    else
    {
        static const float black[] = {0.0f, 0.0f, 0.0f, 0.0f};

        FUNC0(FUNC3(prog->vs.material_specular_location, 1, black));
    }
    FUNC0(FUNC3(prog->vs.material_ambient_location, 1, &state->material.ambient.r));
    FUNC0(FUNC3(prog->vs.material_diffuse_location, 1, &state->material.diffuse.r));
    FUNC0(FUNC3(prog->vs.material_emissive_location, 1, &state->material.emissive.r));
    FUNC1("setting FFP material uniforms");
}