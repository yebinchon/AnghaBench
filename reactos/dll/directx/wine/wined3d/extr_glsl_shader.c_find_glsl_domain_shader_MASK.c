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
struct TYPE_2__ {struct glsl_ds_compiled_shader* ds; } ;
struct glsl_shader_private {unsigned int num_gl_shaders; int shader_array_size; TYPE_1__ gl_shaders; } ;
struct ds_compile_args {int dummy; } ;
struct glsl_ds_compiled_shader {int /*<<< orphan*/  id; struct ds_compile_args args; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_shader*) ; 
 struct glsl_ds_compiled_shader* FUNC2 (int) ; 
 struct glsl_shader_private* FUNC3 (int) ; 
 struct glsl_ds_compiled_shader* FUNC4 (struct glsl_ds_compiled_shader*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ds_compile_args*,struct ds_compile_args const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context const*,struct shader_glsl_priv*,struct wined3d_shader*,struct ds_compile_args const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLuint FUNC8(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, struct wined3d_shader *shader, const struct ds_compile_args *args)
{
    struct glsl_ds_compiled_shader *gl_shaders, *new_array;
    struct glsl_shader_private *shader_data;
    unsigned int i, new_size;
    GLuint ret;

    if (!shader->backend_data)
    {
        if (!(shader->backend_data = FUNC3(sizeof(*shader_data))))
        {
            FUNC0("Failed to allocate backend data.\n");
            return 0;
        }
    }
    shader_data = shader->backend_data;
    gl_shaders = shader_data->gl_shaders.ds;

    for (i = 0; i < shader_data->num_gl_shaders; ++i)
    {
        if (!FUNC5(&gl_shaders[i].args, args, sizeof(*args)))
            return gl_shaders[i].id;
    }

    FUNC1("No matching GL shader found for shader %p, compiling a new shader.\n", shader);

    if (shader_data->num_gl_shaders)
    {
        new_size = shader_data->shader_array_size + 1;
        new_array = FUNC4(shader_data->gl_shaders.ds, new_size * sizeof(*new_array));
    }
    else
    {
        new_array = FUNC2(sizeof(*new_array));
        new_size = 1;
    }

    if (!new_array)
    {
        FUNC0("Failed to allocate GL shaders array.\n");
        return 0;
    }
    shader_data->gl_shaders.ds = new_array;
    shader_data->shader_array_size = new_size;
    gl_shaders = new_array;

    FUNC7(&priv->shader_buffer);
    ret = FUNC6(context, priv, shader, args);
    gl_shaders[shader_data->num_gl_shaders].args = *args;
    gl_shaders[shader_data->num_gl_shaders++].id = ret;

    return ret;
}