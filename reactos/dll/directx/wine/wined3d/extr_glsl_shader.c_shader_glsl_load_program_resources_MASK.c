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
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_context {int /*<<< orphan*/  gl_info; } ;
struct shader_glsl_priv {int dummy; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct shader_glsl_priv*,int /*<<< orphan*/ ,struct wined3d_shader_reg_maps const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct shader_glsl_priv*,int /*<<< orphan*/ ,struct wined3d_shader_reg_maps const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,struct shader_glsl_priv*,int /*<<< orphan*/ ,struct wined3d_shader_reg_maps const*) ; 

__attribute__((used)) static void FUNC3(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, GLuint program_id, const struct wined3d_shader *shader)
{
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;

    FUNC0(context->gl_info, priv, program_id, reg_maps);
    FUNC1(context->gl_info, priv, program_id, reg_maps);
    /* Texture unit mapping is set up to be the same each time the shader
     * program is used so we can hardcode the sampler uniform values. */
    FUNC2(context, priv, program_id, reg_maps);
}