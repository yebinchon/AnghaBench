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
struct wined3d_state {int /*<<< orphan*/ * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_arb_priv* shader_priv; int /*<<< orphan*/ * shader_backend; } ;
struct wined3d_context {struct wined3d_device* device; struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int /*<<< orphan*/  r; } ;
struct shader_arb_priv {int* pshader_const_dirty; int /*<<< orphan*/  highest_dirty_ps_const; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 size_t ARB_FFP_CONST_TFACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAGMENT_PROGRAM_ARB ; 
 size_t WINED3D_RS_TEXTUREFACTOR ; 
 int /*<<< orphan*/  arb_program_shader_backend ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_color*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_device *device = context->device;
    struct wined3d_color color;

    if (device->shader_backend == &arb_program_shader_backend)
    {
        struct shader_arb_priv *priv;

        /* Don't load the parameter if we're using an arbfp pixel shader,
         * otherwise we'll overwrite application provided constants. */
        if (FUNC4(state))
            return;

        priv = device->shader_priv;
        priv->pshader_const_dirty[ARB_FFP_CONST_TFACTOR] = 1;
        priv->highest_dirty_ps_const = FUNC3(priv->highest_dirty_ps_const, ARB_FFP_CONST_TFACTOR + 1);
    }

    FUNC5(&color, state->render_states[WINED3D_RS_TEXTUREFACTOR]);
    FUNC0(FUNC2(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_TFACTOR, &color.r));
    FUNC1("glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_TFACTOR, &color.r)");
}