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
struct wined3d_shader_version {int major; } ;
struct wined3d_shader_signature_element {int /*<<< orphan*/  register_idx; } ;
struct wined3d_shader_reg_maps {struct wined3d_shader_version shader_version; int /*<<< orphan*/  input_registers; scalar_t__ input_rel_addressing; } ;
struct TYPE_6__ {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct wined3d_shader {TYPE_3__ input_signature; TYPE_2__* limits; struct wined3d_shader_reg_maps reg_maps; } ;
struct TYPE_4__ {int /*<<< orphan*/  user_clip_distances; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_1__ limits; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct vs_compile_args {scalar_t__ next_shader_type; int /*<<< orphan*/  interpolation_mode; int /*<<< orphan*/  next_shader_input_count; int /*<<< orphan*/  flatshading; scalar_t__ clip_enabled; int /*<<< orphan*/  per_vertex_point_size; scalar_t__ point_size; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; struct wined3d_string_buffer_list string_buffers; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; struct vs_compile_args const* cur_vs_args; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_5__ {int /*<<< orphan*/  packed_output; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 size_t ARB_CLIP_CONTROL ; 
 size_t ARB_DRAW_INSTANCED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  MAX_TEXTURES ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_gl_info const*,struct wined3d_string_buffer*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_string_buffer*,struct wined3d_gl_info const*,struct wined3d_shader_signature_element*) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC14 (struct shader_glsl_priv*,struct wined3d_shader const*,int /*<<< orphan*/ ,struct wined3d_gl_info const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_gl_info const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct vs_compile_args const*) ; 
 scalar_t__ FUNC16 (struct wined3d_gl_info const*) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLuint FUNC18(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, const struct wined3d_shader *shader, const struct vs_compile_args *args)
{
    struct wined3d_string_buffer_list *string_buffers = &priv->string_buffers;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    const struct wined3d_shader_version *version = &reg_maps->shader_version;
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_ctx_priv priv_ctx;
    GLuint shader_id;
    unsigned int i;

    FUNC5(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.cur_vs_args = args;
    priv_ctx.string_buffers = string_buffers;

    FUNC10(buffer, gl_info);

    FUNC13(buffer, gl_info);
    if (gl_info->supported[ARB_DRAW_INSTANCED])
        FUNC7(buffer, "#extension GL_ARB_draw_instanced : enable\n");
    if (FUNC16(gl_info))
        FUNC7(buffer, "#extension GL_ARB_explicit_attrib_location : enable\n");

    /* Base Declarations */
    FUNC9(context, buffer, shader, reg_maps, &priv_ctx);

    for (i = 0; i < shader->input_signature.element_count; ++i)
        FUNC12(buffer, gl_info, &shader->input_signature.elements[i]);

    if (args->point_size && !args->per_vertex_point_size)
    {
        FUNC7(buffer, "uniform struct\n{\n");
        FUNC7(buffer, "    float size;\n");
        FUNC7(buffer, "    float size_min;\n");
        FUNC7(buffer, "    float size_max;\n");
        FUNC7(buffer, "} ffp_point;\n");
    }

    if (!FUNC6(gl_info))
    {
        if (args->clip_enabled)
            FUNC7(buffer, "uniform vec4 clip_planes[%u];\n", gl_info->limits.user_clip_distances);

        if (version->major < 3)
        {
            FUNC3(gl_info, buffer, args->flatshading, "vec4 ffp_varying_diffuse;\n");
            FUNC3(gl_info, buffer, args->flatshading, "vec4 ffp_varying_specular;\n");
            FUNC3(gl_info, buffer, FALSE, "vec4 ffp_varying_texcoord[%u];\n", MAX_TEXTURES);
            FUNC3(gl_info, buffer, FALSE, "float ffp_varying_fogcoord;\n");
        }
    }

    if (version->major < 4)
        FUNC7(buffer, "void setup_vs_output(in vec4[%u]);\n", shader->limits->packed_output);

    if (args->next_shader_type == WINED3D_SHADER_TYPE_PIXEL && !gl_info->supported[ARB_CLIP_CONTROL])
        FUNC7(buffer, "uniform vec4 pos_fixup;\n");

    if (reg_maps->shader_version.major >= 4)
        FUNC14(priv, shader, args->next_shader_input_count,
                gl_info, args->next_shader_type == WINED3D_SHADER_TYPE_PIXEL, args->interpolation_mode);

    FUNC7(buffer, "void main()\n{\n");

    if (reg_maps->input_rel_addressing)
    {
        unsigned int highest_input_register = FUNC17(reg_maps->input_registers);
        FUNC7(buffer, "vec4 vs_in[%u];\n", highest_input_register + 1);
        for (i = 0; i < shader->input_signature.element_count; ++i)
        {
            const struct wined3d_shader_signature_element *e = &shader->input_signature.elements[i];
            FUNC7(buffer, "vs_in[%u] = vs_in%u;\n", e->register_idx, e->register_idx);
        }
    }

    if (FUNC0(FUNC8(shader, buffer, reg_maps, &priv_ctx, NULL, NULL)))
        return 0;

    /* In SM4+ the shader epilogue is generated by the "ret" instruction. */
    if (reg_maps->shader_version.major < 4)
        FUNC15(gl_info, buffer, shader, args);

    FUNC7(buffer, "}\n");

    shader_id = FUNC1(FUNC4(GL_VERTEX_SHADER));
    FUNC2("Compiling shader object %u.\n", shader_id);
    FUNC11(gl_info, shader_id, buffer->buffer);

    return shader_id;
}