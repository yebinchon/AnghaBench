#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader {struct glsl_shader_private* backend_data; } ;
struct TYPE_3__ {int use_map; } ;
struct wined3d_context {TYPE_1__ stream_info; } ;
struct vs_compile_args {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  shader_buffer; } ;
struct glsl_vs_compiled_shader {int /*<<< orphan*/  id; struct vs_compile_args args; } ;
struct TYPE_4__ {struct glsl_vs_compiled_shader* vs; } ;
struct glsl_shader_private {size_t num_gl_shaders; size_t shader_array_size; TYPE_2__ gl_shaders; } ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_shader*) ; 
 struct glsl_vs_compiled_shader* FUNC2 (int) ; 
 struct glsl_shader_private* FUNC3 (int) ; 
 struct glsl_vs_compiled_shader* FUNC4 (struct glsl_vs_compiled_shader*,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context const*,struct shader_glsl_priv*,struct wined3d_shader*,struct vs_compile_args const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct vs_compile_args*,struct vs_compile_args const*,int) ; 

__attribute__((used)) static GLuint FUNC9(const struct wined3d_context *context, struct shader_glsl_priv *priv,
        struct wined3d_shader *shader, const struct vs_compile_args *args)
{
    UINT i;
    DWORD new_size;
    DWORD use_map = context->stream_info.use_map;
    struct glsl_vs_compiled_shader *gl_shaders, *new_array;
    struct glsl_shader_private *shader_data;
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
    gl_shaders = shader_data->gl_shaders.vs;

    /* Usually we have very few GL shaders for each d3d shader(just 1 or maybe 2),
     * so a linear search is more performant than a hashmap or a binary search
     * (cache coherency etc)
     */
    for (i = 0; i < shader_data->num_gl_shaders; ++i)
    {
        if (FUNC8(&gl_shaders[i].args, args, use_map))
            return gl_shaders[i].id;
    }

    FUNC1("No matching GL shader found for shader %p, compiling a new shader.\n", shader);

    if (shader_data->shader_array_size == shader_data->num_gl_shaders)
    {
        if (shader_data->num_gl_shaders)
        {
            new_size = shader_data->shader_array_size + FUNC5(1, shader_data->shader_array_size / 2);
            new_array = FUNC4(shader_data->gl_shaders.vs, new_size * sizeof(*gl_shaders));
        }
        else
        {
            new_array = FUNC2(sizeof(*gl_shaders));
            new_size = 1;
        }

        if(!new_array) {
            FUNC0("Out of memory\n");
            return 0;
        }
        shader_data->gl_shaders.vs = new_array;
        shader_data->shader_array_size = new_size;
        gl_shaders = new_array;
    }

    gl_shaders[shader_data->num_gl_shaders].args = *args;

    FUNC7(&priv->shader_buffer);
    ret = FUNC6(context, priv, shader, args);
    gl_shaders[shader_data->num_gl_shaders++].id = ret;

    return ret;
}