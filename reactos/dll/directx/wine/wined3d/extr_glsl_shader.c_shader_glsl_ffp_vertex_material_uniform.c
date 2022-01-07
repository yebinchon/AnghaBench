
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


struct TYPE_11__ {float const r; } ;
struct TYPE_9__ {float const r; } ;
struct TYPE_8__ {float const r; } ;
struct TYPE_7__ {float const r; } ;
struct TYPE_12__ {TYPE_5__ emissive; TYPE_3__ diffuse; TYPE_2__ ambient; int power; TYPE_1__ specular; } ;
struct wined3d_state {TYPE_6__ material; scalar_t__* render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_10__ {int material_emissive_location; int material_diffuse_location; int material_ambient_location; int material_specular_location; int material_shininess_location; } ;
struct glsl_shader_prog_link {TYPE_4__ vs; } ;


 int GL_EXTCALL (int ) ;
 size_t WINED3D_RS_SPECULARENABLE ;
 int checkGLcall (char*) ;
 int glUniform1f (int ,int ) ;
 int glUniform4fv (int ,int,float const*) ;

__attribute__((used)) static void shader_glsl_ffp_vertex_material_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (state->render_states[WINED3D_RS_SPECULARENABLE])
    {
        GL_EXTCALL(glUniform4fv(prog->vs.material_specular_location, 1, &state->material.specular.r));
        GL_EXTCALL(glUniform1f(prog->vs.material_shininess_location, state->material.power));
    }
    else
    {
        static const float black[] = {0.0f, 0.0f, 0.0f, 0.0f};

        GL_EXTCALL(glUniform4fv(prog->vs.material_specular_location, 1, black));
    }
    GL_EXTCALL(glUniform4fv(prog->vs.material_ambient_location, 1, &state->material.ambient.r));
    GL_EXTCALL(glUniform4fv(prog->vs.material_diffuse_location, 1, &state->material.diffuse.r));
    GL_EXTCALL(glUniform4fv(prog->vs.material_emissive_location, 1, &state->material.emissive.r));
    checkGLcall("setting FFP material uniforms");
}
