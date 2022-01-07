
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_resource_info {int type; } ;
struct wined3d_context {size_t* rev_tex_unit_map; unsigned int fixed_function_usage_map; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t MAX_FRAGMENT_SAMPLERS ;
 size_t MAX_TEXTURES ;
 int TRUE ;
 size_t WINED3D_UNMAPPED_STAGE ;

__attribute__((used)) static BOOL context_unit_free_for_vs(const struct wined3d_context *context,
        const struct wined3d_shader_resource_info *ps_resource_info, DWORD unit)
{
    DWORD current_mapping = context->rev_tex_unit_map[unit];


    if (current_mapping == WINED3D_UNMAPPED_STAGE)
        return TRUE;

    if (current_mapping < MAX_FRAGMENT_SAMPLERS)
    {


        if (!ps_resource_info)
        {

            return current_mapping >= MAX_TEXTURES || !(context->fixed_function_usage_map & (1u << current_mapping));
        }


        return !ps_resource_info[current_mapping].type;
    }

    return TRUE;
}
