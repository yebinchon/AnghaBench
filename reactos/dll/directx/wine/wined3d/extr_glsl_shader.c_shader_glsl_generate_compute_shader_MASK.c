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
struct wined3d_shader_thread_group_size {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct wined3d_shader_reg_maps {unsigned int tgsm_count; TYPE_3__* tgsm; } ;
struct TYPE_4__ {struct wined3d_shader_thread_group_size thread_group_size; } ;
struct TYPE_5__ {TYPE_1__ cs; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; TYPE_2__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_ctx_priv {struct wined3d_string_buffer_list* string_buffers; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_6__ {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPUTE_SHADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_glsl_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context const*,struct wined3d_string_buffer*,struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static GLuint FUNC10(const struct wined3d_context *context,
        struct wined3d_string_buffer *buffer, struct wined3d_string_buffer_list *string_buffers,
        const struct wined3d_shader *shader)
{
    const struct wined3d_shader_thread_group_size *thread_group_size = &shader->u.cs.thread_group_size;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_ctx_priv priv_ctx;
    GLuint shader_id;
    unsigned int i;

    FUNC3(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.string_buffers = string_buffers;

    FUNC7(buffer, gl_info);

    FUNC9(buffer, gl_info);
    FUNC4(buffer, "#extension GL_ARB_compute_shader : enable\n");

    FUNC6(context, buffer, shader, reg_maps, &priv_ctx);

    for (i = 0; i < reg_maps->tgsm_count; ++i)
    {
        if (reg_maps->tgsm[i].size)
            FUNC4(buffer, "shared uint cs_g%u[%u];\n", i, reg_maps->tgsm[i].size);
    }

    FUNC4(buffer, "layout(local_size_x = %u, local_size_y = %u, local_size_z = %u) in;\n",
            thread_group_size->x, thread_group_size->y, thread_group_size->z);

    FUNC4(buffer, "void main()\n{\n");
    FUNC5(shader, buffer, reg_maps, &priv_ctx, NULL, NULL);
    FUNC4(buffer, "}\n");

    shader_id = FUNC0(FUNC2(GL_COMPUTE_SHADER));
    FUNC1("Compiling shader object %u.\n", shader_id);
    FUNC8(gl_info, shader_id, buffer->buffer);

    return shader_id;
}