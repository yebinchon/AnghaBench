#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer_list {int dummy; } ;
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct wined3d_shader_reg_maps {scalar_t__ vocp; } ;
struct wined3d_shader_phase {unsigned int temporary_count; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_6__ {unsigned int fork_count; unsigned int join_count; int /*<<< orphan*/ * join; int /*<<< orphan*/ * fork; struct wined3d_shader_phase* control_point; } ;
struct wined3d_hull_shader {TYPE_3__ phases; int /*<<< orphan*/  output_vertex_count; } ;
struct TYPE_4__ {struct wined3d_hull_shader hs; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; int /*<<< orphan*/  output_signature; TYPE_2__* limits; int /*<<< orphan*/  patch_constant_signature; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; struct wined3d_string_buffer_list string_buffers; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_5__ {int /*<<< orphan*/  packed_output; int /*<<< orphan*/  packed_input; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TESS_CONTROL_SHADER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_string_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_string_buffer*,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct shader_glsl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wined3d_shader_reg_maps*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLuint FUNC16(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, const struct wined3d_shader *shader)
{
    struct wined3d_string_buffer_list *string_buffers = &priv->string_buffers;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_hull_shader *hs = &shader->u.hs;
    const struct wined3d_shader_phase *phase;
    struct shader_glsl_ctx_priv priv_ctx;
    GLuint shader_id;
    unsigned int i;

    FUNC4(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.string_buffers = string_buffers;

    FUNC8(buffer, gl_info);

    FUNC10(buffer, gl_info);
    FUNC5(buffer, "#extension GL_ARB_tessellation_shader : enable\n");

    FUNC7(context, buffer, shader, reg_maps, &priv_ctx);

    FUNC5(buffer, "layout(vertices = %u) out;\n", hs->output_vertex_count);

    FUNC5(buffer, "in shader_in_out { vec4 reg[%u]; } shader_in[];\n", shader->limits->packed_input);
    FUNC5(buffer, "out shader_in_out { vec4 reg[%u]; } shader_out[];\n", shader->limits->packed_output);

    FUNC12(buffer, &shader->patch_constant_signature, FALSE);

    if (hs->phases.control_point)
    {
        FUNC5(buffer, "void setup_hs_output(in vec4 outputs[%u])\n{\n",
                shader->limits->packed_output);
        FUNC15(priv, shader->limits->packed_output, &shader->output_signature,
                &shader->reg_maps, "shader_out[gl_InvocationID]", FALSE);
        FUNC5(buffer, "}\n");
    }

    FUNC5(buffer, "void hs_control_point_phase()\n{\n");
    if ((phase = hs->phases.control_point))
    {
        for (i = 0; i < phase->temporary_count; ++i)
            FUNC5(buffer, "vec4 R%u;\n", i);
        if (FUNC0(FUNC6(shader, buffer, reg_maps, &priv_ctx, phase->start, phase->end)))
            return 0;
        FUNC5(buffer, "setup_hs_output(hs_out);\n");
    }
    else
    {
        FUNC11(shader, buffer, reg_maps);
    }
    FUNC5(buffer, "}\n");

    for (i = 0; i < hs->phases.fork_count; ++i)
    {
        if (FUNC0(FUNC13(shader, buffer, reg_maps, &priv_ctx,
                &hs->phases.fork[i], "fork", i)))
            return 0;
    }

    for (i = 0; i < hs->phases.join_count; ++i)
    {
        if (FUNC0(FUNC13(shader, buffer, reg_maps, &priv_ctx,
                &hs->phases.join[i], "join", i)))
            return 0;
    }

    FUNC5(buffer, "void main()\n{\n");
    FUNC5(buffer, "hs_control_point_phase();\n");
    if (reg_maps->vocp)
        FUNC5(buffer, "barrier();\n");
    for (i = 0; i < hs->phases.fork_count; ++i)
        FUNC14(buffer, &hs->phases.fork[i], "fork", i);
    for (i = 0; i < hs->phases.join_count; ++i)
        FUNC14(buffer, &hs->phases.join[i], "join", i);
    FUNC5(buffer, "setup_patch_constant_output();\n");
    FUNC5(buffer, "}\n");

    shader_id = FUNC1(FUNC3(GL_TESS_CONTROL_SHADER));
    FUNC2("Compiling shader object %u.\n", shader_id);
    FUNC9(gl_info, shader_id, buffer->buffer);

    return shader_id;
}