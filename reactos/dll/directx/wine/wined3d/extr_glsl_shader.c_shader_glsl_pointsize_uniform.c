
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {int pointsize_q_att_location; int pointsize_l_att_location; int pointsize_c_att_location; int pointsize_location; int pointsize_max_location; int pointsize_min_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;


 int GL_EXTCALL (int ) ;
 int checkGLcall (char*) ;
 int get_pointsize (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ;
 int get_pointsize_minmax (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ;
 int glUniform1f (int ,float) ;

__attribute__((used)) static void shader_glsl_pointsize_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    float min, max;
    float size, att[3];

    get_pointsize_minmax(context, state, &min, &max);

    GL_EXTCALL(glUniform1f(prog->vs.pointsize_min_location, min));
    checkGLcall("glUniform1f");
    GL_EXTCALL(glUniform1f(prog->vs.pointsize_max_location, max));
    checkGLcall("glUniform1f");

    get_pointsize(context, state, &size, att);

    GL_EXTCALL(glUniform1f(prog->vs.pointsize_location, size));
    checkGLcall("glUniform1f");
    GL_EXTCALL(glUniform1f(prog->vs.pointsize_c_att_location, att[0]));
    checkGLcall("glUniform1f");
    GL_EXTCALL(glUniform1f(prog->vs.pointsize_l_att_location, att[1]));
    checkGLcall("glUniform1f");
    GL_EXTCALL(glUniform1f(prog->vs.pointsize_q_att_location, att[2]));
    checkGLcall("glUniform1f");
}
