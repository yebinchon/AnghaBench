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
struct wined3d_vec4 {int /*<<< orphan*/  x; } ;
struct wined3d_state {struct wined3d_matrix* transforms; } ;
struct wined3d_matrix {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  r; } ;
struct TYPE_8__ {int /*<<< orphan*/  r; } ;
struct TYPE_7__ {int /*<<< orphan*/  r; } ;
struct TYPE_12__ {int type; float theta; float phi; int /*<<< orphan*/  attenuation2; int /*<<< orphan*/  attenuation1; int /*<<< orphan*/  attenuation0; int /*<<< orphan*/  falloff; int /*<<< orphan*/  range; TYPE_3__ ambient; TYPE_2__ specular; TYPE_1__ diffuse; } ;
struct wined3d_light_info {TYPE_6__ OriginalParms; int /*<<< orphan*/  position; int /*<<< orphan*/  direction; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_11__ {TYPE_4__* light_location; } ;
struct glsl_shader_prog_link {TYPE_5__ vs; } ;
struct TYPE_10__ {int /*<<< orphan*/  position; int /*<<< orphan*/  direction; int /*<<< orphan*/  cos_hphi; int /*<<< orphan*/  cos_htheta; int /*<<< orphan*/  q_att; int /*<<< orphan*/  l_att; int /*<<< orphan*/  c_att; int /*<<< orphan*/  falloff; int /*<<< orphan*/  range; int /*<<< orphan*/  ambient; int /*<<< orphan*/  specular; int /*<<< orphan*/  diffuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  WINED3D_LIGHT_DIRECTIONAL 131 
#define  WINED3D_LIGHT_PARALLELPOINT 130 
#define  WINED3D_LIGHT_POINT 129 
#define  WINED3D_LIGHT_SPOT 128 
 size_t WINED3D_TS_VIEW ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_vec4*,int /*<<< orphan*/ *,struct wined3d_matrix const*) ; 

__attribute__((used)) static void FUNC8(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int light, const struct wined3d_light_info *light_info,
        struct glsl_shader_prog_link *prog)
{
    const struct wined3d_matrix *view = &state->transforms[WINED3D_TS_VIEW];
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_vec4 vec4;

    FUNC1(FUNC6(prog->vs.light_location[light].diffuse, 1, &light_info->OriginalParms.diffuse.r));
    FUNC1(FUNC6(prog->vs.light_location[light].specular, 1, &light_info->OriginalParms.specular.r));
    FUNC1(FUNC6(prog->vs.light_location[light].ambient, 1, &light_info->OriginalParms.ambient.r));

    switch (light_info->OriginalParms.type)
    {
        case WINED3D_LIGHT_POINT:
            FUNC7(&vec4, &light_info->position, view);
            FUNC1(FUNC6(prog->vs.light_location[light].position, 1, &vec4.x));
            FUNC1(FUNC4(prog->vs.light_location[light].range, light_info->OriginalParms.range));
            FUNC1(FUNC4(prog->vs.light_location[light].c_att, light_info->OriginalParms.attenuation0));
            FUNC1(FUNC4(prog->vs.light_location[light].l_att, light_info->OriginalParms.attenuation1));
            FUNC1(FUNC4(prog->vs.light_location[light].q_att, light_info->OriginalParms.attenuation2));
            break;

        case WINED3D_LIGHT_SPOT:
            FUNC7(&vec4, &light_info->position, view);
            FUNC1(FUNC6(prog->vs.light_location[light].position, 1, &vec4.x));

            FUNC7(&vec4, &light_info->direction, view);
            FUNC1(FUNC5(prog->vs.light_location[light].direction, 1, &vec4.x));

            FUNC1(FUNC4(prog->vs.light_location[light].range, light_info->OriginalParms.range));
            FUNC1(FUNC4(prog->vs.light_location[light].falloff, light_info->OriginalParms.falloff));
            FUNC1(FUNC4(prog->vs.light_location[light].c_att, light_info->OriginalParms.attenuation0));
            FUNC1(FUNC4(prog->vs.light_location[light].l_att, light_info->OriginalParms.attenuation1));
            FUNC1(FUNC4(prog->vs.light_location[light].q_att, light_info->OriginalParms.attenuation2));
            FUNC1(FUNC4(prog->vs.light_location[light].cos_htheta, FUNC3(light_info->OriginalParms.theta / 2.0f)));
            FUNC1(FUNC4(prog->vs.light_location[light].cos_hphi, FUNC3(light_info->OriginalParms.phi / 2.0f)));
            break;

        case WINED3D_LIGHT_DIRECTIONAL:
            FUNC7(&vec4, &light_info->direction, view);
            FUNC1(FUNC5(prog->vs.light_location[light].direction, 1, &vec4.x));
            break;

        case WINED3D_LIGHT_PARALLELPOINT:
            FUNC7(&vec4, &light_info->position, view);
            FUNC1(FUNC6(prog->vs.light_location[light].position, 1, &vec4.x));
            break;

        default:
            FUNC0("Unrecognized light type %#x.\n", light_info->OriginalParms.type);
    }
    FUNC2("setting FFP lights uniforms");
}