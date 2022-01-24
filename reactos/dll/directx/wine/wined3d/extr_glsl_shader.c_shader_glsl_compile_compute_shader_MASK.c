#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader {int /*<<< orphan*/  reg_maps; int /*<<< orphan*/  linked_programs; struct glsl_shader_prog_link* backend_data; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; struct glsl_context_data* shader_backend_data; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; struct wined3d_string_buffer shader_buffer; } ;
struct TYPE_15__ {int /*<<< orphan*/  shader_entry; struct wined3d_shader* id; } ;
struct TYPE_14__ {int /*<<< orphan*/ * np2_fixup_info; scalar_t__ id; } ;
struct TYPE_13__ {scalar_t__ id; } ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_9__ {struct glsl_cs_compiled_shader* cs; } ;
struct glsl_shader_prog_link {int shader_array_size; scalar_t__ constant_update_mask; TYPE_7__ cs; TYPE_6__ ps; scalar_t__ shader_controlled_clip_distances; scalar_t__ constant_version; TYPE_5__ gs; TYPE_4__ ds; TYPE_3__ hs; TYPE_2__ vs; struct wined3d_shader* id; int /*<<< orphan*/  num_gl_shaders; TYPE_1__ gl_shaders; } ;
struct glsl_shader_private {int shader_array_size; scalar_t__ constant_update_mask; TYPE_7__ cs; TYPE_6__ ps; scalar_t__ shader_controlled_clip_distances; scalar_t__ constant_version; TYPE_5__ gs; TYPE_4__ ds; TYPE_3__ hs; TYPE_2__ vs; struct wined3d_shader* id; int /*<<< orphan*/  num_gl_shaders; TYPE_1__ gl_shaders; } ;
struct glsl_cs_compiled_shader {struct wined3d_shader* id; } ;
struct glsl_context_data {TYPE_8__* glsl_program; } ;
struct TYPE_16__ {struct wined3d_shader* id; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  struct wined3d_shader* GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 struct wined3d_shader* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct wined3d_shader*,...) ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int /*<<< orphan*/  FUNC3 (struct shader_glsl_priv*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_shader*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_shader*) ; 
 void* FUNC9 (int) ; 
 struct glsl_shader_prog_link* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wined3d_shader* FUNC13 (struct wined3d_context const*,struct wined3d_string_buffer*,int /*<<< orphan*/ *,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_gl_info const*,struct shader_glsl_priv*,struct wined3d_shader*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_context const*,struct shader_glsl_priv*,struct wined3d_shader*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_gl_info const*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_string_buffer*) ; 

__attribute__((used)) static HRESULT FUNC18(struct shader_glsl_priv *priv,
        const struct wined3d_context *context, struct wined3d_shader *shader)
{
    struct glsl_context_data *ctx_data = context->shader_backend_data;
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct glsl_cs_compiled_shader *gl_shaders;
    struct glsl_shader_private *shader_data;
    struct glsl_shader_prog_link *entry;
    GLuint shader_id, program_id;

    if (!(entry = FUNC9(sizeof(*entry))))
    {
        FUNC0("Out of memory.\n");
        return E_OUTOFMEMORY;
    }

    if (!(shader->backend_data = FUNC10(sizeof(*shader_data))))
    {
        FUNC0("Failed to allocate backend data.\n");
        FUNC11(entry);
        return E_OUTOFMEMORY;
    }
    shader_data = shader->backend_data;
    gl_shaders = shader_data->gl_shaders.cs;

    if (!(shader_data->gl_shaders.cs = FUNC9(sizeof(*gl_shaders))))
    {
        FUNC0("Failed to allocate GL shader array.\n");
        FUNC11(entry);
        FUNC11(shader->backend_data);
        shader->backend_data = NULL;
        return E_OUTOFMEMORY;
    }
    shader_data->shader_array_size = 1;
    gl_shaders = shader_data->gl_shaders.cs;

    FUNC2("Compiling compute shader %p.\n", shader);

    FUNC17(buffer);
    shader_id = FUNC13(context, buffer, &priv->string_buffers, shader);
    gl_shaders[shader_data->num_gl_shaders++].id = shader_id;

    program_id = FUNC1(FUNC6());
    FUNC2("Created new GLSL shader program %u.\n", program_id);

    entry->id = program_id;
    entry->vs.id = 0;
    entry->hs.id = 0;
    entry->ds.id = 0;
    entry->gs.id = 0;
    entry->ps.id = 0;
    entry->cs.id = shader_id;
    entry->constant_version = 0;
    entry->shader_controlled_clip_distances = 0;
    entry->ps.np2_fixup_info = NULL;
    FUNC3(priv, entry);

    FUNC2("Attaching GLSL shader object %u to program %u.\n", shader_id, program_id);
    FUNC1(FUNC5(program_id, shader_id));
    FUNC4("glAttachShader");

    FUNC12(&shader->linked_programs, &entry->cs.shader_entry);

    FUNC2("Linking GLSL shader program %u.\n", program_id);
    FUNC1(FUNC7(program_id));
    FUNC16(gl_info, program_id);

    FUNC1(FUNC8(program_id));
    FUNC4("glUseProgram");
    FUNC15(context, priv, program_id, shader);
    FUNC14(gl_info, priv, program_id, &shader->reg_maps);

    entry->constant_update_mask = 0;

    FUNC1(FUNC8(ctx_data->glsl_program ? ctx_data->glsl_program->id : 0));
    FUNC4("glUseProgram");
    return WINED3D_OK;
}