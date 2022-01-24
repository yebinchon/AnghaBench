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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature {int dummy; } ;
struct wined3d_shader_reg_maps {int min_rel_offset; int max_rel_offset; } ;
struct wined3d_shader {struct arb_vshader_private* backend_data; struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_gl_info {int quirks; int /*<<< orphan*/ * supported; } ;
struct arb_vshader_private {int rel_offset; size_t num_gl_shaders; size_t shader_array_size; struct arb_vs_compiled_shader* gl_shaders; } ;
struct arb_vs_compile_args {int dummy; } ;
struct arb_vs_compiled_shader {int /*<<< orphan*/  prgId; struct arb_vs_compile_args args; } ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct arb_vs_compiled_shader* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arb_vs_compiled_shader*,int) ; 
 size_t NV_VERTEX_PROGRAM2_OPTION ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT ; 
 void* FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_shader*,struct wined3d_gl_info const*,struct wined3d_string_buffer*,struct arb_vs_compile_args const*,struct arb_vs_compiled_shader*,struct wined3d_shader_signature const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_string_buffer*) ; 
 scalar_t__ FUNC10 (struct arb_vs_compile_args*,struct arb_vs_compile_args const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct arb_vs_compiled_shader *FUNC11(struct wined3d_shader *shader,
        const struct wined3d_gl_info *gl_info, DWORD use_map, const struct arb_vs_compile_args *args,
        const struct wined3d_shader_signature *ps_input_sig)
{
    UINT i;
    DWORD new_size;
    struct arb_vs_compiled_shader *new_array;
    struct wined3d_string_buffer buffer;
    struct arb_vshader_private *shader_data;
    GLuint ret;

    if (!shader->backend_data)
    {
        const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;

        shader->backend_data = FUNC5(sizeof(*shader_data));
        shader_data = shader->backend_data;

        if ((gl_info->quirks & WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT)
                && reg_maps->min_rel_offset <= reg_maps->max_rel_offset)
        {
            if (reg_maps->max_rel_offset - reg_maps->min_rel_offset > 127)
            {
                FUNC1("The difference between the minimum and maximum relative offset is > 127.\n");
                FUNC1("Which this OpenGL implementation does not support. Try using GLSL.\n");
                FUNC1("Min: %u, Max: %u.\n", reg_maps->min_rel_offset, reg_maps->max_rel_offset);
            }
            else if (reg_maps->max_rel_offset - reg_maps->min_rel_offset > 63)
                shader_data->rel_offset = reg_maps->min_rel_offset + 63;
            else if (reg_maps->max_rel_offset > 63)
                shader_data->rel_offset = reg_maps->min_rel_offset;
        }
    }
    shader_data = shader->backend_data;

    /* Usually we have very few GL shaders for each d3d shader(just 1 or maybe 2),
     * so a linear search is more performant than a hashmap or a binary search
     * (cache coherency etc)
     */
    for(i = 0; i < shader_data->num_gl_shaders; i++) {
        if (FUNC10(&shader_data->gl_shaders[i].args, args,
                use_map, gl_info->supported[NV_VERTEX_PROGRAM2_OPTION]))
        {
            return &shader_data->gl_shaders[i];
        }
    }

    FUNC4("No matching GL shader found, compiling a new shader\n");

    if(shader_data->shader_array_size == shader_data->num_gl_shaders) {
        if (shader_data->num_gl_shaders)
        {
            new_size = shader_data->shader_array_size + FUNC6(1, shader_data->shader_array_size / 2);
            new_array = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, shader_data->gl_shaders,
                                    new_size * sizeof(*shader_data->gl_shaders));
        }
        else
        {
            new_array = FUNC5(sizeof(*shader_data->gl_shaders));
            new_size = 1;
        }

        if(!new_array) {
            FUNC0("Out of memory\n");
            return 0;
        }
        shader_data->gl_shaders = new_array;
        shader_data->shader_array_size = new_size;
    }

    shader_data->gl_shaders[shader_data->num_gl_shaders].args = *args;

    if (!FUNC9(&buffer))
    {
        FUNC0("Failed to initialize shader buffer.\n");
        return 0;
    }

    ret = FUNC7(shader, gl_info, &buffer, args,
            &shader_data->gl_shaders[shader_data->num_gl_shaders],
            ps_input_sig);
    FUNC8(&buffer);
    shader_data->gl_shaders[shader_data->num_gl_shaders].prgId = ret;

    return &shader_data->gl_shaders[shader_data->num_gl_shaders++];
}