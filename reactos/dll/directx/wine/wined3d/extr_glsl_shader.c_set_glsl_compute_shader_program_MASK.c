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
struct wined3d_state {struct wined3d_shader** shader; } ;
struct wined3d_shader {int dummy; } ;
struct wined3d_context {unsigned int shader_update_mask; } ;
struct shader_glsl_priv {int dummy; } ;
struct glsl_shader_prog_link {int dummy; } ;
struct glsl_program_key {int /*<<< orphan*/  cs_id; } ;
struct glsl_context_data {struct glsl_shader_prog_link* glsl_program; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,struct shader_glsl_priv*,struct wined3d_shader*) ; 
 struct glsl_shader_prog_link* FUNC3 (struct shader_glsl_priv*,struct glsl_program_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct glsl_program_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_context *context,
        const struct wined3d_state *state, struct shader_glsl_priv *priv, struct glsl_context_data *ctx_data)
{
    struct glsl_shader_prog_link *entry;
    struct wined3d_shader *shader;
    struct glsl_program_key key;
    GLuint cs_id;

    if (!(context->shader_update_mask & (1u << WINED3D_SHADER_TYPE_COMPUTE)))
        return;

    if (!(shader = state->shader[WINED3D_SHADER_TYPE_COMPUTE]))
    {
        FUNC1("Compute shader is NULL.\n");
        ctx_data->glsl_program = NULL;
        return;
    }

    cs_id = FUNC2(context, priv, shader);
    FUNC4(&key, 0, sizeof(key));
    key.cs_id = cs_id;
    if (!(entry = FUNC3(priv, &key)))
        FUNC0("Failed to find GLSL program for compute shader %p.\n", shader);
    ctx_data->glsl_program = entry;
}