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
struct wined3d_string_buffer {int dummy; } ;
struct TYPE_2__ {int major; } ;
struct wined3d_shader_reg_maps {TYPE_1__ shader_version; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_gl_info {int dummy; } ;
struct ps_compile_args {scalar_t__ alpha_test_func; int /*<<< orphan*/  fog; scalar_t__ srgb_correction; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,struct wined3d_gl_info const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_string_buffer*,struct wined3d_gl_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_gl_info *gl_info,
        struct wined3d_string_buffer *buffer, const struct wined3d_shader *shader,
        const struct ps_compile_args *args)
{
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    const char *output = FUNC0(gl_info) ? "gl_FragData[0]" : "ps_out0";

    /* Pixel shaders < 2.0 place the resulting color in R0 implicitly. */
    if (reg_maps->shader_version.major < 2)
        FUNC1(buffer, "%s = R0;\n", output);

    if (args->srgb_correction)
        FUNC4(buffer, gl_info);

    /* SM < 3 does not replace the fog stage. */
    if (reg_maps->shader_version.major < 3)
        FUNC3(buffer, gl_info, args->fog);

    FUNC2(buffer, gl_info, args->alpha_test_func + 1);
}