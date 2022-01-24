#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_shader_version {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {struct wined3d_shader_version shader_version; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_glsl_priv {int dummy; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/ * FUNC0 (struct wined3d_context const*,struct wined3d_shader_version const*,unsigned int*,unsigned int*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info const*,struct shader_glsl_priv*,int /*<<< orphan*/ ,char const*,unsigned int,unsigned int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, GLuint program_id, const struct wined3d_shader_reg_maps *reg_maps)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_shader_version *shader_version;
    const DWORD *tex_unit_map;
    unsigned int base, count;
    const char *prefix;

    if (FUNC3(gl_info))
        return;

    shader_version = reg_maps ? &reg_maps->shader_version : NULL;
    prefix = FUNC1(shader_version ? shader_version->type : WINED3D_SHADER_TYPE_PIXEL);
    tex_unit_map = FUNC0(context, shader_version, &base, &count);
    FUNC2(gl_info, priv, program_id, prefix, base, count, tex_unit_map);
}