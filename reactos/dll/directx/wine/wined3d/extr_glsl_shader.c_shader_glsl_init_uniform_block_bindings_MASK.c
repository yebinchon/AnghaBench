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
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {int /*<<< orphan*/ * cb_sizes; TYPE_1__ shader_version; } ;
struct wined3d_gl_info {int /*<<< orphan*/  limits; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wined3d_gl_info const*) ; 
 struct wined3d_string_buffer* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC10(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id,
        const struct wined3d_shader_reg_maps *reg_maps)
{
    const char *prefix = FUNC4(reg_maps->shader_version.type);
    struct wined3d_string_buffer *name;
    unsigned int i, base, count;
    GLuint block_idx;

    if (FUNC5(gl_info))
        return;

    name = FUNC6(&priv->string_buffers);
    FUNC9(&gl_info->limits, reg_maps->shader_version.type, &base, &count);
    for (i = 0; i < count; ++i)
    {
        if (!reg_maps->cb_sizes[i])
            continue;

        FUNC8(name, "block_%s_cb%u", prefix, i);
        block_idx = FUNC0(FUNC2(program_id, name->buffer));
        FUNC0(FUNC3(program_id, block_idx, base + i));
    }
    FUNC1("glUniformBlockBinding");
    FUNC7(&priv->string_buffers, name);
}