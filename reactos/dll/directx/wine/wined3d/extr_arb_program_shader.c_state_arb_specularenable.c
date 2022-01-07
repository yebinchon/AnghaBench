
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {scalar_t__* render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_arb_priv* shader_priv; int * shader_backend; } ;
struct wined3d_context {struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct shader_arb_priv {int* pshader_const_dirty; int highest_dirty_ps_const; } ;
typedef int DWORD ;


 size_t ARB_FFP_CONST_SPECULAR_ENABLE ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 size_t WINED3D_RS_SPECULARENABLE ;
 int arb_program_shader_backend ;
 int checkGLcall (char*) ;
 int glProgramEnvParameter4fvARB (int ,size_t,float*) ;
 int max (int ,size_t) ;
 scalar_t__ use_ps (struct wined3d_state const*) ;

__attribute__((used)) static void state_arb_specularenable(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_device *device = context->device;
    float col[4];

    if (device->shader_backend == &arb_program_shader_backend)
    {
        struct shader_arb_priv *priv;




        if (use_ps(state))
            return;

        priv = device->shader_priv;
        priv->pshader_const_dirty[ARB_FFP_CONST_SPECULAR_ENABLE] = 1;
        priv->highest_dirty_ps_const = max(priv->highest_dirty_ps_const, ARB_FFP_CONST_SPECULAR_ENABLE + 1);
    }

    if (state->render_states[WINED3D_RS_SPECULARENABLE])
    {

        col[0] = 1.0f; col[1] = 1.0f;
        col[2] = 1.0f; col[3] = 0.0f;
    } else {
        col[0] = 0.0f; col[1] = 0.0f;
        col[2] = 0.0f; col[3] = 0.0f;
    }
    GL_EXTCALL(glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_SPECULAR_ENABLE, col));
    checkGLcall("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_SPECULAR_ENABLE, col)");
}
