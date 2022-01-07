
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
struct TYPE_2__ {int fog_scale_location; int fog_end_location; int fog_density_location; int fog_color_location; } ;
struct glsl_shader_prog_link {TYPE_1__ ps; } ;
typedef int DWORD ;


 int GL_EXTCALL (int ) ;
 size_t WINED3D_RS_FOGCOLOR ;
 size_t WINED3D_RS_FOGDENSITY ;
 int checkGLcall (char*) ;
 int get_fog_start_end (struct wined3d_context const*,struct wined3d_state const*,float*,float*) ;
 int glUniform1f (int ,float) ;
 int glUniform4fv (int ,int,int *) ;
 int wined3d_color_from_d3dcolor (struct wined3d_color*,int ) ;

__attribute__((used)) static void shader_glsl_load_fog_uniform(const struct wined3d_context *context,
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

    wined3d_color_from_d3dcolor(&color, state->render_states[WINED3D_RS_FOGCOLOR]);
    GL_EXTCALL(glUniform4fv(prog->ps.fog_color_location, 1, &color.r));
    tmpvalue.d = state->render_states[WINED3D_RS_FOGDENSITY];
    GL_EXTCALL(glUniform1f(prog->ps.fog_density_location, tmpvalue.f));
    get_fog_start_end(context, state, &start, &end);
    scale = 1.0f / (end - start);
    GL_EXTCALL(glUniform1f(prog->ps.fog_end_location, end));
    GL_EXTCALL(glUniform1f(prog->ps.fog_scale_location, scale));
    checkGLcall("fog emulation uniforms");
}
