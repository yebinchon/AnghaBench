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
struct wined3d_shader_reg_maps {TYPE_1__ shader_version; struct wined3d_shader_immediate_constant_buffer* icb; } ;
struct wined3d_shader_immediate_constant_buffer {scalar_t__ data; int /*<<< orphan*/  vec4_count; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct wined3d_string_buffer* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*,char*,char const*) ; 

__attribute__((used)) static void FUNC8(const struct wined3d_gl_info *gl_info, struct shader_glsl_priv *priv,
        GLuint program_id, const struct wined3d_shader_reg_maps *reg_maps)
{
    const struct wined3d_shader_immediate_constant_buffer *icb = reg_maps->icb;

    if (icb)
    {
        struct wined3d_string_buffer *icb_name = FUNC5(&priv->string_buffers);
        const char *prefix = FUNC4(reg_maps->shader_version.type);
        GLint icb_location;

        FUNC7(icb_name, "%s_icb", prefix);
        icb_location = FUNC0(FUNC2(program_id, icb_name->buffer));
        FUNC0(FUNC3(icb_location, icb->vec4_count, (const GLfloat *)icb->data));
        FUNC1("Load immediate constant buffer");

        FUNC6(&priv->string_buffers, icb_name);
    }
}