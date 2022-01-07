
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_state {float* render_states; } ;
struct TYPE_3__ {int (* p_glAlphaFunc ) (scalar_t__,float) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef scalar_t__ GLint ;
typedef int DWORD ;


 size_t WINED3D_RS_ALPHAFUNC ;
 size_t WINED3D_RS_ALPHAREF ;
 int checkGLcall (char*) ;
 int stub1 (scalar_t__,float) ;
 scalar_t__ wined3d_gl_compare_func (float) ;

__attribute__((used)) static void glsl_fragment_pipe_alpha_test_func(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLint func = wined3d_gl_compare_func(state->render_states[WINED3D_RS_ALPHAFUNC]);
    float ref = state->render_states[WINED3D_RS_ALPHAREF] / 255.0f;

    if (func)
    {
        gl_info->gl_ops.gl.p_glAlphaFunc(func, ref);
        checkGLcall("glAlphaFunc");
    }
}
