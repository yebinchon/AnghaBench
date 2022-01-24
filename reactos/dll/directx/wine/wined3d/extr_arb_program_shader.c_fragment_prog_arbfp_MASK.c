#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_state {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {int /*<<< orphan*/ * shader_backend; struct shader_arb_priv* fragment_priv; } ;
struct wined3d_context {unsigned int shader_update_mask; scalar_t__ last_was_pshader; int /*<<< orphan*/  constant_update_mask; struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct shader_arb_priv {int /*<<< orphan*/  current_fprogram_id; int /*<<< orphan*/  fragment_shaders; } ;
struct ffp_frag_settings {int dummy; } ;
struct TYPE_2__ {struct ffp_frag_settings settings; } ;
struct arbfp_ffp_desc {int /*<<< orphan*/  shader; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAGMENT_PROGRAM_ARB ; 
 unsigned int MAX_TEXTURES ; 
 int /*<<< orphan*/  STATE_COLOR_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WINED3D_RS_FOGENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SPECULARENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_TEXTUREFACTOR ; 
 int /*<<< orphan*/  WINED3D_SHADER_CONST_PS_F ; 
 unsigned int WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  WINED3D_TSS_BUMPENV_MAT00 ; 
 int /*<<< orphan*/  WINED3D_TSS_CONSTANT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  arb_program_shader_backend ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct ffp_frag_settings*) ; 
 int /*<<< orphan*/  FUNC9 (struct ffp_frag_settings*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_context*,struct wined3d_state const*,struct ffp_frag_settings*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arbfp_ffp_desc* FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct wined3d_state const*) ; 

__attribute__((used)) static void FUNC19(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_device *device = context->device;
    struct shader_arb_priv *priv = device->fragment_priv;
    BOOL use_pshader = FUNC18(state);
    struct ffp_frag_settings settings;
    const struct arbfp_ffp_desc *desc;
    unsigned int i;

    FUNC4("context %p, state %p, state_id %#x.\n", context, state, state_id);

    if (FUNC13(context, FUNC2(WINED3D_RS_FOGENABLE)))
    {
        if (!use_pshader && device->shader_backend == &arb_program_shader_backend && context->last_was_pshader)
        {
            /* Reload fixed function constants since they collide with the
             * pixel shader constants. */
            for (i = 0; i < MAX_TEXTURES; ++i)
            {
                FUNC14(context, state, FUNC3(i, WINED3D_TSS_BUMPENV_MAT00));
                FUNC17(context, state, FUNC3(i, WINED3D_TSS_CONSTANT));
            }
            FUNC16(context, state, FUNC2(WINED3D_RS_TEXTUREFACTOR));
            FUNC15(context, state, FUNC2(WINED3D_RS_SPECULARENABLE));
            FUNC7(context, state, STATE_COLOR_KEY);
        }
        else if (use_pshader)
        {
            context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_PIXEL;
        }
        return;
    }

    if (!use_pshader)
    {
        /* Find or create a shader implementing the fixed function pipeline
         * settings, then activate it. */
        FUNC10(context, state, &settings, FALSE);
        desc = (const struct arbfp_ffp_desc *)FUNC8(&priv->fragment_shaders, &settings);
        if (!desc)
        {
            struct arbfp_ffp_desc *new_desc;

            if (!(new_desc = FUNC12(sizeof(*new_desc))))
            {
                FUNC0("Out of memory\n");
                return;
            }

            new_desc->parent.settings = settings;
            new_desc->shader = FUNC9(&settings, gl_info);
            FUNC5(&priv->fragment_shaders, &new_desc->parent);
            FUNC4("Allocated fixed function replacement shader descriptor %p\n", new_desc);
            desc = new_desc;
        }

        /* Now activate the replacement program. GL_FRAGMENT_PROGRAM_ARB is already active (however, note the
         * comment above the shader_select call below). If e.g. GLSL is active, the shader_select call will
         * deactivate it.
         */
        FUNC1(FUNC11(GL_FRAGMENT_PROGRAM_ARB, desc->shader));
        FUNC6("glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, desc->shader)");
        priv->current_fprogram_id = desc->shader;

        if (device->shader_backend == &arb_program_shader_backend && context->last_was_pshader)
        {
            /* Reload fixed function constants since they collide with the
             * pixel shader constants. */
            for (i = 0; i < MAX_TEXTURES; ++i)
            {
                FUNC14(context, state, FUNC3(i, WINED3D_TSS_BUMPENV_MAT00));
                FUNC17(context, state, FUNC3(i, WINED3D_TSS_CONSTANT));
            }
            FUNC16(context, state, FUNC2(WINED3D_RS_TEXTUREFACTOR));
            FUNC15(context, state, FUNC2(WINED3D_RS_SPECULARENABLE));
            FUNC7(context, state, STATE_COLOR_KEY);
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