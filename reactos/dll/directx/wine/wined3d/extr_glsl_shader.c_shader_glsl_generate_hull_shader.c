
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer_list {int dummy; } ;
struct wined3d_string_buffer {int buffer; } ;
struct wined3d_shader_reg_maps {scalar_t__ vocp; } ;
struct wined3d_shader_phase {unsigned int temporary_count; int end; int start; } ;
struct TYPE_6__ {unsigned int fork_count; unsigned int join_count; int * join; int * fork; struct wined3d_shader_phase* control_point; } ;
struct wined3d_hull_shader {TYPE_3__ phases; int output_vertex_count; } ;
struct TYPE_4__ {struct wined3d_hull_shader hs; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; int output_signature; TYPE_2__* limits; int patch_constant_signature; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; struct wined3d_string_buffer_list string_buffers; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; } ;
typedef int priv_ctx ;
struct TYPE_5__ {int packed_output; int packed_input; } ;
typedef int GLuint ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GL_EXTCALL (int ) ;
 int GL_TESS_CONTROL_SHADER ;
 int TRACE (char*,int ) ;
 int glCreateShader (int ) ;
 int memset (struct shader_glsl_ctx_priv*,int ,int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_generate_code (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int ,int ) ;
 int shader_generate_glsl_declarations (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ;
 int shader_glsl_add_version_declaration (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ;
 int shader_glsl_compile (struct wined3d_gl_info const*,int ,int ) ;
 int shader_glsl_enable_extensions (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ;
 int shader_glsl_generate_default_control_point_phase (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*) ;
 int shader_glsl_generate_patch_constant_setup (struct wined3d_string_buffer*,int *,int ) ;
 int shader_glsl_generate_shader_phase (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int *,char*,unsigned int) ;
 int shader_glsl_generate_shader_phase_invocation (struct wined3d_string_buffer*,int *,char*,unsigned int) ;
 int shader_glsl_setup_sm4_shader_output (struct shader_glsl_priv*,int ,int *,struct wined3d_shader_reg_maps*,char*,int ) ;

__attribute__((used)) static GLuint shader_glsl_generate_hull_shader(const struct wined3d_context *context,
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

    memset(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.string_buffers = string_buffers;

    shader_glsl_add_version_declaration(buffer, gl_info);

    shader_glsl_enable_extensions(buffer, gl_info);
    shader_addline(buffer, "#extension GL_ARB_tessellation_shader : enable\n");

    shader_generate_glsl_declarations(context, buffer, shader, reg_maps, &priv_ctx);

    shader_addline(buffer, "layout(vertices = %u) out;\n", hs->output_vertex_count);

    shader_addline(buffer, "in shader_in_out { vec4 reg[%u]; } shader_in[];\n", shader->limits->packed_input);
    shader_addline(buffer, "out shader_in_out { vec4 reg[%u]; } shader_out[];\n", shader->limits->packed_output);

    shader_glsl_generate_patch_constant_setup(buffer, &shader->patch_constant_signature, FALSE);

    if (hs->phases.control_point)
    {
        shader_addline(buffer, "void setup_hs_output(in vec4 outputs[%u])\n{\n",
                shader->limits->packed_output);
        shader_glsl_setup_sm4_shader_output(priv, shader->limits->packed_output, &shader->output_signature,
                &shader->reg_maps, "shader_out[gl_InvocationID]", FALSE);
        shader_addline(buffer, "}\n");
    }

    shader_addline(buffer, "void hs_control_point_phase()\n{\n");
    if ((phase = hs->phases.control_point))
    {
        for (i = 0; i < phase->temporary_count; ++i)
            shader_addline(buffer, "vec4 R%u;\n", i);
        if (FAILED(shader_generate_code(shader, buffer, reg_maps, &priv_ctx, phase->start, phase->end)))
            return 0;
        shader_addline(buffer, "setup_hs_output(hs_out);\n");
    }
    else
    {
        shader_glsl_generate_default_control_point_phase(shader, buffer, reg_maps);
    }
    shader_addline(buffer, "}\n");

    for (i = 0; i < hs->phases.fork_count; ++i)
    {
        if (FAILED(shader_glsl_generate_shader_phase(shader, buffer, reg_maps, &priv_ctx,
                &hs->phases.fork[i], "fork", i)))
            return 0;
    }

    for (i = 0; i < hs->phases.join_count; ++i)
    {
        if (FAILED(shader_glsl_generate_shader_phase(shader, buffer, reg_maps, &priv_ctx,
                &hs->phases.join[i], "join", i)))
            return 0;
    }

    shader_addline(buffer, "void main()\n{\n");
    shader_addline(buffer, "hs_control_point_phase();\n");
    if (reg_maps->vocp)
        shader_addline(buffer, "barrier();\n");
    for (i = 0; i < hs->phases.fork_count; ++i)
        shader_glsl_generate_shader_phase_invocation(buffer, &hs->phases.fork[i], "fork", i);
    for (i = 0; i < hs->phases.join_count; ++i)
        shader_glsl_generate_shader_phase_invocation(buffer, &hs->phases.join[i], "join", i);
    shader_addline(buffer, "setup_patch_constant_output();\n");
    shader_addline(buffer, "}\n");

    shader_id = GL_EXTCALL(glCreateShader(GL_TESS_CONTROL_SHADER));
    TRACE("Compiling shader object %u.\n", shader_id);
    shader_glsl_compile(gl_info, shader_id, buffer->buffer);

    return shader_id;
}
