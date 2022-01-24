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
struct wined3d_shader_reg_maps {int dummy; } ;
struct TYPE_4__ {int tessellator_domain; } ;
struct TYPE_5__ {TYPE_1__ ds; } ;
struct wined3d_shader {int /*<<< orphan*/  patch_constant_signature; TYPE_3__* limits; TYPE_2__ u; struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_gl_info {int /*<<< orphan*/ * supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; struct wined3d_string_buffer_list string_buffers; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; struct ds_compile_args const* cur_ds_args; } ;
struct ds_compile_args {int tessellator_output_primitive; int tessellator_partitioning; scalar_t__ next_shader_type; int /*<<< orphan*/  interpolation_mode; int /*<<< orphan*/  output_count; int /*<<< orphan*/  render_offscreen; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_6__ {int /*<<< orphan*/  packed_input; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 size_t ARB_CLIP_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TESS_EVALUATION_SHADER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ; 
#define  WINED3D_TESSELLATOR_DOMAIN_LINE 138 
#define  WINED3D_TESSELLATOR_DOMAIN_QUAD 137 
#define  WINED3D_TESSELLATOR_DOMAIN_TRIANGLE 136 
#define  WINED3D_TESSELLATOR_OUTPUT_LINE 135 
#define  WINED3D_TESSELLATOR_OUTPUT_POINT 134 
#define  WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW 133 
#define  WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CW 132 
#define  WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN 131 
#define  WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD 130 
#define  WINED3D_TESSELLATOR_PARTITIONING_INTEGER 129 
#define  WINED3D_TESSELLATOR_PARTITIONING_POW2 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_string_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct shader_glsl_priv*,struct wined3d_shader const*,int /*<<< orphan*/ ,struct wined3d_gl_info const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLuint FUNC13(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, const struct wined3d_shader *shader, const struct ds_compile_args *args)
{
    struct wined3d_string_buffer_list *string_buffers = &priv->string_buffers;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_ctx_priv priv_ctx;
    GLuint shader_id;

    FUNC4(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.cur_ds_args = args;
    priv_ctx.string_buffers = string_buffers;

    FUNC8(buffer, gl_info);

    FUNC10(buffer, gl_info);
    FUNC5(buffer, "#extension GL_ARB_tessellation_shader : enable\n");

    FUNC7(context, buffer, shader, reg_maps, &priv_ctx);

    FUNC5(buffer, "layout(");
    switch (shader->u.ds.tessellator_domain)
    {
        case WINED3D_TESSELLATOR_DOMAIN_LINE:
            FUNC5(buffer, "isolines");
            break;
        case WINED3D_TESSELLATOR_DOMAIN_QUAD:
            FUNC5(buffer, "quads");
            break;
        case WINED3D_TESSELLATOR_DOMAIN_TRIANGLE:
            FUNC5(buffer, "triangles");
            break;
    }
    switch (args->tessellator_output_primitive)
    {
        case WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CW:
            if (args->render_offscreen)
                FUNC5(buffer, ", ccw");
            else
                FUNC5(buffer, ", cw");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW:
            if (args->render_offscreen)
                FUNC5(buffer, ", cw");
            else
                FUNC5(buffer, ", ccw");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_POINT:
            FUNC5(buffer, ", point_mode");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_LINE:
            break;
    }
    switch (args->tessellator_partitioning)
    {
        case WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD:
            FUNC5(buffer, ", fractional_odd_spacing");
            break;
        case WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN:
            FUNC5(buffer, ", fractional_even_spacing");
            break;
        case WINED3D_TESSELLATOR_PARTITIONING_INTEGER:
        case WINED3D_TESSELLATOR_PARTITIONING_POW2:
            FUNC5(buffer, ", equal_spacing");
            break;
    }
    FUNC5(buffer, ") in;\n");

    FUNC5(buffer, "in shader_in_out { vec4 reg[%u]; } shader_in[];\n", shader->limits->packed_input);

    if (args->next_shader_type == WINED3D_SHADER_TYPE_PIXEL && !gl_info->supported[ARB_CLIP_CONTROL])
        FUNC5(buffer, "uniform vec4 pos_fixup;\n");

    FUNC12(priv, shader, args->output_count, gl_info,
            args->next_shader_type == WINED3D_SHADER_TYPE_PIXEL, args->interpolation_mode);
    FUNC11(buffer, &shader->patch_constant_signature, TRUE);

    FUNC5(buffer, "void main()\n{\n");
    FUNC5(buffer, "setup_patch_constant_input();\n");

    if (FUNC0(FUNC6(shader, buffer, reg_maps, &priv_ctx, NULL, NULL)))
        return 0;

    FUNC5(buffer, "}\n");

    shader_id = FUNC1(FUNC3(GL_TESS_EVALUATION_SHADER));
    FUNC2("Compiling shader object %u.\n", shader_id);
    FUNC9(gl_info, shader_id, buffer->buffer);

    return shader_id;
}