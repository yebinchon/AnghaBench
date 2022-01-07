
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int ** texture_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_arb_priv* shader_priv; int * shader_backend; } ;
struct wined3d_context {int constant_update_mask; struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct shader_arb_priv {int* pshader_const_dirty; int highest_dirty_ps_const; } ;
typedef int DWORD ;


 int ARB_FFP_CONST_LUMINANCE (int) ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int STATE_TEXTURESTAGE (int ,int ) ;
 int WINED3D_HIGHEST_TEXTURE_STATE ;
 int WINED3D_SHADER_CONST_PS_BUMP_ENV ;
 size_t WINED3D_TSS_BUMPENV_LOFFSET ;
 size_t WINED3D_TSS_BUMPENV_LSCALE ;
 int arb_program_shader_backend ;
 int checkGLcall (char*) ;
 int glProgramEnvParameter4fvARB (int ,int,float*) ;
 int max (int ,int) ;
 scalar_t__ use_ps (struct wined3d_state const*) ;

__attribute__((used)) static void tex_bumpenvlum_arbfp(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - STATE_TEXTURESTAGE(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_device *device = context->device;
    float param[4];

    context->constant_update_mask |= WINED3D_SHADER_CONST_PS_BUMP_ENV;

    if (device->shader_backend == &arb_program_shader_backend)
    {
        struct shader_arb_priv *priv = device->shader_priv;


        if (use_ps(state))
            return;

        priv->pshader_const_dirty[ARB_FFP_CONST_LUMINANCE(stage)] = 1;
        priv->highest_dirty_ps_const = max(priv->highest_dirty_ps_const, ARB_FFP_CONST_LUMINANCE(stage) + 1);
    }

    param[0] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_LSCALE]);
    param[1] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_LOFFSET]);
    param[2] = 0.0f;
    param[3] = 0.0f;

    GL_EXTCALL(glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_LUMINANCE(stage), param));
    checkGLcall("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_LUMINANCE(stage), param)");
}
