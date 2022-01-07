
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int src_blt_color_key; } ;
struct TYPE_3__ {int format; } ;
struct wined3d_texture {TYPE_2__ async; TYPE_1__ resource; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_arb_priv* shader_priv; int * shader_backend; } ;
struct wined3d_context {struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
struct shader_arb_priv {int* pshader_const_dirty; int highest_dirty_ps_const; } ;
typedef int DWORD ;


 size_t ARB_FFP_CONST_COLOR_KEY_HIGH ;
 size_t ARB_FFP_CONST_COLOR_KEY_LOW ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int arb_program_shader_backend ;
 int checkGLcall (char*) ;
 int glProgramEnvParameter4fvARB (int ,size_t,int *) ;
 int max (int ,size_t) ;
 scalar_t__ use_ps (struct wined3d_state const*) ;
 int wined3d_format_get_float_color_key (int ,int *,struct wined3d_color*) ;

__attribute__((used)) static void color_key_arbfp(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_texture *texture = state->textures[0];
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_device *device = context->device;
    struct wined3d_color float_key[2];

    if (!texture)
        return;

    if (device->shader_backend == &arb_program_shader_backend)
    {
        struct shader_arb_priv *priv;



        if (use_ps(state))
            return;

        priv = device->shader_priv;
        priv->pshader_const_dirty[ARB_FFP_CONST_COLOR_KEY_LOW] = 1;
        priv->pshader_const_dirty[ARB_FFP_CONST_COLOR_KEY_HIGH] = 1;
        priv->highest_dirty_ps_const = max(priv->highest_dirty_ps_const, ARB_FFP_CONST_COLOR_KEY_HIGH + 1);
    }

    wined3d_format_get_float_color_key(texture->resource.format, &texture->async.src_blt_color_key, float_key);

    GL_EXTCALL(glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_LOW, &float_key[0].r));
    checkGLcall("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_LOW, &float_key[0].r)");
    GL_EXTCALL(glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_HIGH, &float_key[1].r));
    checkGLcall("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_HIGH, &float_key[1].r)");
}
