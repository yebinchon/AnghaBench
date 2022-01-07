
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_vec4 {int x; } ;
struct wined3d_state {int * transforms; struct wined3d_vec4* clip_planes; } ;
struct wined3d_matrix {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {scalar_t__ clip_planes_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;


 int GL_EXTCALL (int ) ;
 size_t WINED3D_TS_VIEW ;
 int glUniform4fv (scalar_t__,int,int *) ;
 int invert_matrix (struct wined3d_matrix*,int *) ;
 int multiply_vector_matrix (struct wined3d_vec4*,struct wined3d_vec4*,struct wined3d_matrix*) ;
 int transpose_matrix (struct wined3d_matrix*,struct wined3d_matrix*) ;
 int use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void shader_glsl_clip_plane_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int index, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_matrix matrix;
    struct wined3d_vec4 plane;

    plane = state->clip_planes[index];


    if (!use_vs(state))
    {
        invert_matrix(&matrix, &state->transforms[WINED3D_TS_VIEW]);
        transpose_matrix(&matrix, &matrix);
        multiply_vector_matrix(&plane, &plane, &matrix);
    }

    GL_EXTCALL(glUniform4fv(prog->vs.clip_planes_location + index, 1, &plane.x));
}
