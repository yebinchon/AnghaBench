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
struct wined3d_context {unsigned int shader_update_mask; struct wined3d_gl_info* gl_info; struct glsl_context_data* shader_backend_data; } ;
struct shader_glsl_priv {int dummy; } ;
struct glsl_context_data {TYPE_1__* glsl_program; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 unsigned int WINED3D_SHADER_TYPE_DOMAIN ; 
 unsigned int WINED3D_SHADER_TYPE_GEOMETRY ; 
 unsigned int WINED3D_SHADER_TYPE_HULL ; 
 unsigned int WINED3D_SHADER_TYPE_PIXEL ; 
 unsigned int WINED3D_SHADER_TYPE_VERTEX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,struct wined3d_state const*,struct shader_glsl_priv*,struct glsl_context_data*) ; 

__attribute__((used)) static void FUNC5(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    struct glsl_context_data *ctx_data = context->shader_backend_data;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_priv *priv = shader_priv;
    GLuint program_id, prev_id;

    prev_id = ctx_data->glsl_program ? ctx_data->glsl_program->id : 0;
    FUNC4(context, state, priv, ctx_data);
    program_id = ctx_data->glsl_program ? ctx_data->glsl_program->id : 0;

    FUNC1("Using GLSL program %u.\n", program_id);

    if (prev_id != program_id)
    {
        FUNC0(FUNC3(program_id));
        FUNC2("glUseProgram");
    }

    context->shader_update_mask |= (1u << WINED3D_SHADER_TYPE_PIXEL)
            | (1u << WINED3D_SHADER_TYPE_VERTEX)
            | (1u << WINED3D_SHADER_TYPE_GEOMETRY)
            | (1u << WINED3D_SHADER_TYPE_HULL)
            | (1u << WINED3D_SHADER_TYPE_DOMAIN);
}