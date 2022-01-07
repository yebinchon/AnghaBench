
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {int * shader_backend; struct shader_arb_priv* fragment_priv; } ;
struct wined3d_context {unsigned int shader_update_mask; scalar_t__ last_was_pshader; int constant_update_mask; struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct shader_arb_priv {int current_fprogram_id; int fragment_shaders; } ;
struct ffp_frag_settings {int dummy; } ;
struct TYPE_2__ {struct ffp_frag_settings settings; } ;
struct arbfp_ffp_desc {int shader; TYPE_1__ parent; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 scalar_t__ FALSE ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 unsigned int MAX_TEXTURES ;
 int STATE_COLOR_KEY ;
 int STATE_RENDER (int ) ;
 int STATE_TEXTURESTAGE (unsigned int,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WINED3D_RS_FOGENABLE ;
 int WINED3D_RS_SPECULARENABLE ;
 int WINED3D_RS_TEXTUREFACTOR ;
 int WINED3D_SHADER_CONST_PS_F ;
 unsigned int WINED3D_SHADER_TYPE_PIXEL ;
 int WINED3D_TSS_BUMPENV_MAT00 ;
 int WINED3D_TSS_CONSTANT ;
 int add_ffp_frag_shader (int *,TYPE_1__*) ;
 int arb_program_shader_backend ;
 int checkGLcall (char*) ;
 int color_key_arbfp (struct wined3d_context*,struct wined3d_state const*,int ) ;
 scalar_t__ find_ffp_frag_shader (int *,struct ffp_frag_settings*) ;
 int gen_arbfp_ffp_shader (struct ffp_frag_settings*,struct wined3d_gl_info const*) ;
 int gen_ffp_frag_op (struct wined3d_context*,struct wined3d_state const*,struct ffp_frag_settings*,scalar_t__) ;
 int glBindProgramARB (int ,int ) ;
 struct arbfp_ffp_desc* heap_alloc (int) ;
 scalar_t__ isStateDirty (struct wined3d_context*,int ) ;
 int set_bumpmat_arbfp (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int state_arb_specularenable (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int state_texfactor_arbfp (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int state_tss_constant_arbfp (struct wined3d_context*,struct wined3d_state const*,int ) ;
 scalar_t__ use_ps (struct wined3d_state const*) ;

__attribute__((used)) static void fragment_prog_arbfp(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_device *device = context->device;
    struct shader_arb_priv *priv = device->fragment_priv;
    BOOL use_pshader = use_ps(state);
    struct ffp_frag_settings settings;
    const struct arbfp_ffp_desc *desc;
    unsigned int i;

    TRACE("context %p, state %p, state_id %#x.\n", context, state, state_id);

    if (isStateDirty(context, STATE_RENDER(WINED3D_RS_FOGENABLE)))
    {
        if (!use_pshader && device->shader_backend == &arb_program_shader_backend && context->last_was_pshader)
        {


            for (i = 0; i < MAX_TEXTURES; ++i)
            {
                set_bumpmat_arbfp(context, state, STATE_TEXTURESTAGE(i, WINED3D_TSS_BUMPENV_MAT00));
                state_tss_constant_arbfp(context, state, STATE_TEXTURESTAGE(i, WINED3D_TSS_CONSTANT));
            }
            state_texfactor_arbfp(context, state, STATE_RENDER(WINED3D_RS_TEXTUREFACTOR));
            state_arb_specularenable(context, state, STATE_RENDER(WINED3D_RS_SPECULARENABLE));
            color_key_arbfp(context, state, STATE_COLOR_KEY);
        }
        else if (use_pshader)
        {
            context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_PIXEL;
        }
        return;
    }

    if (!use_pshader)
    {


        gen_ffp_frag_op(context, state, &settings, FALSE);
        desc = (const struct arbfp_ffp_desc *)find_ffp_frag_shader(&priv->fragment_shaders, &settings);
        if (!desc)
        {
            struct arbfp_ffp_desc *new_desc;

            if (!(new_desc = heap_alloc(sizeof(*new_desc))))
            {
                ERR("Out of memory\n");
                return;
            }

            new_desc->parent.settings = settings;
            new_desc->shader = gen_arbfp_ffp_shader(&settings, gl_info);
            add_ffp_frag_shader(&priv->fragment_shaders, &new_desc->parent);
            TRACE("Allocated fixed function replacement shader descriptor %p\n", new_desc);
            desc = new_desc;
        }





        GL_EXTCALL(glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, desc->shader));
        checkGLcall("glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, desc->shader)");
        priv->current_fprogram_id = desc->shader;

        if (device->shader_backend == &arb_program_shader_backend && context->last_was_pshader)
        {


            for (i = 0; i < MAX_TEXTURES; ++i)
            {
                set_bumpmat_arbfp(context, state, STATE_TEXTURESTAGE(i, WINED3D_TSS_BUMPENV_MAT00));
                state_tss_constant_arbfp(context, state, STATE_TEXTURESTAGE(i, WINED3D_TSS_CONSTANT));
            }
            state_texfactor_arbfp(context, state, STATE_RENDER(WINED3D_RS_TEXTUREFACTOR));
            state_arb_specularenable(context, state, STATE_RENDER(WINED3D_RS_SPECULARENABLE));
            color_key_arbfp(context, state, STATE_COLOR_KEY);
        }
        context->last_was_pshader = FALSE;
    }
    else if (!context->last_was_pshader)
    {
        if (device->shader_backend == &arb_program_shader_backend)
            context->constant_update_mask |= WINED3D_SHADER_CONST_PS_F;
        context->last_was_pshader = TRUE;
    }

    context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_PIXEL;
}
