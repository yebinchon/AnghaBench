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
struct TYPE_5__ {int instance_count; int /*<<< orphan*/  so_desc; int /*<<< orphan*/  vertices_out; int /*<<< orphan*/  output_type; int /*<<< orphan*/  input_type; } ;
struct TYPE_6__ {TYPE_2__ gs; } ;
struct wined3d_shader {TYPE_3__ u; TYPE_1__* limits; struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_gl_info {int /*<<< orphan*/ * supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; struct wined3d_string_buffer_list string_buffers; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; } ;
struct gs_compile_args {int /*<<< orphan*/  interpolation_mode; int /*<<< orphan*/  output_count; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_4__ {int /*<<< orphan*/  packed_input; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 size_t ARB_CLIP_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_GEOMETRY_SHADER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wined3d_shader const*) ; 
 int /*<<< orphan*/  FUNC6 (struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC13 (struct shader_glsl_priv*,struct wined3d_shader const*,int /*<<< orphan*/ ,struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct shader_glsl_priv*,struct wined3d_shader const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLuint FUNC15(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, const struct wined3d_shader *shader, const struct gs_compile_args *args)
{
    struct wined3d_string_buffer_list *string_buffers = &priv->string_buffers;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_ctx_priv priv_ctx;
    GLuint shader_id;

    FUNC6(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.string_buffers = string_buffers;

    FUNC10(buffer, gl_info);

    FUNC12(buffer, gl_info);

    FUNC9(context, buffer, shader, reg_maps, &priv_ctx);

    FUNC7(buffer, "layout(%s", FUNC4(shader->u.gs.input_type));
    if (shader->u.gs.instance_count > 1)
        FUNC7(buffer, ", invocations = %u", shader->u.gs.instance_count);
    FUNC7(buffer, ") in;\n");
    FUNC7(buffer, "layout(%s, max_vertices = %u) out;\n",
            FUNC4(shader->u.gs.output_type), shader->u.gs.vertices_out);
    FUNC7(buffer, "in shader_in_out { vec4 reg[%u]; } shader_in[];\n", shader->limits->packed_input);

    if (!gl_info->supported[ARB_CLIP_CONTROL])
        FUNC7(buffer, "uniform vec4 pos_fixup;\n");

    if (FUNC5(shader))
    {
        FUNC14(priv, shader, &shader->u.gs.so_desc);
    }
    else
    {
        FUNC13(priv, shader, args->output_count,
                gl_info, TRUE, args->interpolation_mode);
    }
    FUNC7(buffer, "void main()\n{\n");
    if (FUNC0(FUNC8(shader, buffer, reg_maps, &priv_ctx, NULL, NULL)))
        return 0;
    FUNC7(buffer, "}\n");

    shader_id = FUNC1(FUNC3(GL_GEOMETRY_SHADER));
    FUNC2("Compiling shader object %u.\n", shader_id);
    FUNC11(gl_info, shader_id, buffer->buffer);

    return shader_id;
}