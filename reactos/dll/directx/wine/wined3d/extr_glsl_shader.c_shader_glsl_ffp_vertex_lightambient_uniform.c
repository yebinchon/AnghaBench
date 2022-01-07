
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
struct TYPE_2__ {int light_ambient_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;


 int GL_EXTCALL (int ) ;
 size_t WINED3D_RS_AMBIENT ;
 int checkGLcall (char*) ;
 int glUniform3fv (int ,int,int *) ;
 int wined3d_color_from_d3dcolor (struct wined3d_color*,int ) ;

__attribute__((used)) static void shader_glsl_ffp_vertex_lightambient_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_color color;

    wined3d_color_from_d3dcolor(&color, state->render_states[WINED3D_RS_AMBIENT]);
    GL_EXTCALL(glUniform3fv(prog->vs.light_ambient_location, 1, &color.r));
    checkGLcall("glUniform3fv");
}
