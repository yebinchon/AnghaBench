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
struct wined3d_shader {struct glsl_shader_private* backend_data; } ;
struct wined3d_context {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  shader_buffer; } ;
struct TYPE_2__ {struct glsl_hs_compiled_shader* hs; } ;
struct glsl_shader_private {int num_gl_shaders; unsigned int shader_array_size; TYPE_1__ gl_shaders; } ;
struct glsl_hs_compiled_shader {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct glsl_hs_compiled_shader* FUNC3 (int) ; 
 struct glsl_shader_private* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context const*,struct shader_glsl_priv*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLuint FUNC7(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, struct wined3d_shader *shader)
{
    struct glsl_hs_compiled_shader *gl_shaders, *new_array;
    struct glsl_shader_private *shader_data;
    unsigned int new_size;
    GLuint ret;

    if (!shader->backend_data)
    {
        if (!(shader->backend_data = FUNC4(sizeof(*shader_data))))
        {
            FUNC0("Failed to allocate backend data.\n");
            return 0;
        }
    }
    shader_data = shader->backend_data;
    gl_shaders = shader_data->gl_shaders.hs;

    if (shader_data->num_gl_shaders > 0)
    {
        FUNC2(shader_data->num_gl_shaders == 1);
        return gl_shaders[0].id;
    }

    FUNC1("No matching GL shader found for shader %p, compiling a new shader.\n", shader);

    FUNC2(!shader_data->gl_shaders.hs);
    new_size = 1;
    if (!(new_array = FUNC3(sizeof(*new_array))))
    {
        FUNC0("Failed to allocate GL shaders array.\n");
        return 0;
    }
    shader_data->gl_shaders.hs = new_array;
    shader_data->shader_array_size = new_size;
    gl_shaders = new_array;

    FUNC6(&priv->shader_buffer);
    ret = FUNC5(context, priv, shader);
    gl_shaders[shader_data->num_gl_shaders++].id = ret;

    return ret;
}