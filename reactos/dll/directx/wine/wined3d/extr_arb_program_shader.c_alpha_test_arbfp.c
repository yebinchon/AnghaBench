
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_state {scalar_t__* render_states; } ;
struct TYPE_3__ {int (* p_glAlphaFunc ) (int,float) ;int (* p_glDisable ) (int ) ;int (* p_glEnable ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;


 int GL_ALPHA_TEST ;
 int TRACE (char*,struct wined3d_context*,struct wined3d_state const*,int ) ;
 size_t WINED3D_RS_ALPHAFUNC ;
 size_t WINED3D_RS_ALPHAREF ;
 size_t WINED3D_RS_ALPHATESTENABLE ;
 int checkGLcall (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int,float) ;
 int wined3d_gl_compare_func (scalar_t__) ;

__attribute__((used)) static void alpha_test_arbfp(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    int glParm;
    float ref;

    TRACE("context %p, state %p, state_id %#x.\n", context, state, state_id);

    if (state->render_states[WINED3D_RS_ALPHATESTENABLE])
    {
        gl_info->gl_ops.gl.p_glEnable(GL_ALPHA_TEST);
        checkGLcall("glEnable GL_ALPHA_TEST");
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(GL_ALPHA_TEST);
        checkGLcall("glDisable GL_ALPHA_TEST");
        return;
    }

    ref = ((float)state->render_states[WINED3D_RS_ALPHAREF]) / 255.0f;
    glParm = wined3d_gl_compare_func(state->render_states[WINED3D_RS_ALPHAFUNC]);

    if (glParm)
    {
        gl_info->gl_ops.gl.p_glAlphaFunc(glParm, ref);
        checkGLcall("glAlphaFunc");
    }
}
