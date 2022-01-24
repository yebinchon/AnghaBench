#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_1__ shader_version; } ;
struct wined3d_shader {TYPE_3__ reg_maps; int /*<<< orphan*/  output_signature; TYPE_2__* limits; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  packed_output; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info const*,struct wined3d_string_buffer*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_glsl_priv*,struct wined3d_gl_info const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_glsl_priv*,unsigned int,int /*<<< orphan*/ *,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC7(struct shader_glsl_priv *priv,
        const struct wined3d_shader *shader, unsigned int input_count,
        const struct wined3d_gl_info *gl_info, BOOL rasterizer_setup, const DWORD *interpolation_mode)
{
    const char *prefix = FUNC3(shader->reg_maps.shader_version.type);
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;

    if (rasterizer_setup)
        input_count = FUNC0(FUNC6(4, gl_info), input_count);

    if (input_count)
        FUNC2(gl_info, buffer, input_count, rasterizer_setup, interpolation_mode);

    FUNC1(buffer, "void setup_%s_output(in vec4 outputs[%u])\n{\n",
            prefix, shader->limits->packed_output);

    if (rasterizer_setup)
        FUNC4(priv, gl_info, NULL, NULL,
                NULL, input_count, &shader->output_signature, &shader->reg_maps, FALSE);
    else
        FUNC5(priv, input_count, &shader->output_signature,
                &shader->reg_maps, "shader_out", rasterizer_setup);

    FUNC1(buffer, "}\n");
}