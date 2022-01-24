#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_state {int /*<<< orphan*/ ** texture_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_arb_priv* shader_priv; int /*<<< orphan*/ * shader_backend; } ;
struct wined3d_context {struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int /*<<< orphan*/  r; } ;
struct shader_arb_priv {int* pshader_const_dirty; int /*<<< orphan*/  highest_dirty_ps_const; } ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAGMENT_PROGRAM_ARB ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WINED3D_HIGHEST_TEXTURE_STATE ; 
 size_t WINED3D_TSS_CONSTANT ; 
 int /*<<< orphan*/  arb_program_shader_backend ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_color*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - FUNC2(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_device *device = context->device;
    struct wined3d_color color;

    if (device->shader_backend == &arb_program_shader_backend)
    {
        struct shader_arb_priv *priv;

        /* Don't load the parameter if we're using an arbfp pixel shader, otherwise we'll overwrite
         * application provided constants.
         */
        if (FUNC6(state))
            return;

        priv = device->shader_priv;
        priv->pshader_const_dirty[FUNC0(stage)] = 1;
        priv->highest_dirty_ps_const = FUNC5(priv->highest_dirty_ps_const, FUNC0(stage) + 1);
    }

    FUNC7(&color, state->texture_states[stage][WINED3D_TSS_CONSTANT]);
    FUNC1(FUNC4(GL_FRAGMENT_PROGRAM_ARB, FUNC0(stage), &color.r));
    FUNC3("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_CONSTANT(stage), &color.r)");
}