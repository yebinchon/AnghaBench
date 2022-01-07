
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_vec4 {int x; } ;
struct wined3d_state {struct wined3d_matrix* transforms; } ;
struct wined3d_matrix {int dummy; } ;
struct TYPE_9__ {int r; } ;
struct TYPE_8__ {int r; } ;
struct TYPE_7__ {int r; } ;
struct TYPE_12__ {int type; float theta; float phi; int attenuation2; int attenuation1; int attenuation0; int falloff; int range; TYPE_3__ ambient; TYPE_2__ specular; TYPE_1__ diffuse; } ;
struct wined3d_light_info {TYPE_6__ OriginalParms; int position; int direction; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_11__ {TYPE_4__* light_location; } ;
struct glsl_shader_prog_link {TYPE_5__ vs; } ;
struct TYPE_10__ {int position; int direction; int cos_hphi; int cos_htheta; int q_att; int l_att; int c_att; int falloff; int range; int ambient; int specular; int diffuse; } ;


 int FIXME (char*,int) ;
 int GL_EXTCALL (int ) ;




 size_t WINED3D_TS_VIEW ;
 int checkGLcall (char*) ;
 int cosf (float) ;
 int glUniform1f (int ,int ) ;
 int glUniform3fv (int ,int,int *) ;
 int glUniform4fv (int ,int,int *) ;
 int multiply_vector_matrix (struct wined3d_vec4*,int *,struct wined3d_matrix const*) ;

__attribute__((used)) static void shader_glsl_ffp_vertex_light_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int light, const struct wined3d_light_info *light_info,
        struct glsl_shader_prog_link *prog)
{
    const struct wined3d_matrix *view = &state->transforms[WINED3D_TS_VIEW];
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_vec4 vec4;

    GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].diffuse, 1, &light_info->OriginalParms.diffuse.r));
    GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].specular, 1, &light_info->OriginalParms.specular.r));
    GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].ambient, 1, &light_info->OriginalParms.ambient.r));

    switch (light_info->OriginalParms.type)
    {
        case 129:
            multiply_vector_matrix(&vec4, &light_info->position, view);
            GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].position, 1, &vec4.x));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].range, light_info->OriginalParms.range));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].c_att, light_info->OriginalParms.attenuation0));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].l_att, light_info->OriginalParms.attenuation1));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].q_att, light_info->OriginalParms.attenuation2));
            break;

        case 128:
            multiply_vector_matrix(&vec4, &light_info->position, view);
            GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].position, 1, &vec4.x));

            multiply_vector_matrix(&vec4, &light_info->direction, view);
            GL_EXTCALL(glUniform3fv(prog->vs.light_location[light].direction, 1, &vec4.x));

            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].range, light_info->OriginalParms.range));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].falloff, light_info->OriginalParms.falloff));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].c_att, light_info->OriginalParms.attenuation0));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].l_att, light_info->OriginalParms.attenuation1));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].q_att, light_info->OriginalParms.attenuation2));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].cos_htheta, cosf(light_info->OriginalParms.theta / 2.0f)));
            GL_EXTCALL(glUniform1f(prog->vs.light_location[light].cos_hphi, cosf(light_info->OriginalParms.phi / 2.0f)));
            break;

        case 131:
            multiply_vector_matrix(&vec4, &light_info->direction, view);
            GL_EXTCALL(glUniform3fv(prog->vs.light_location[light].direction, 1, &vec4.x));
            break;

        case 130:
            multiply_vector_matrix(&vec4, &light_info->position, view);
            GL_EXTCALL(glUniform4fv(prog->vs.light_location[light].position, 1, &vec4.x));
            break;

        default:
            FIXME("Unrecognized light type %#x.\n", light_info->OriginalParms.type);
    }
    checkGLcall("setting FFP lights uniforms");
}
