
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_semantic {int usage; int usage_idx; int reg; int resource_data_type; int resource_type; } ;
typedef enum wined3d_sm1_resource_type { ____Placeholder_wined3d_sm1_resource_type } wined3d_sm1_resource_type ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int FIXME (char*,int) ;
 int WINED3D_DATA_FLOAT ;
 int WINED3D_SHADER_RESOURCE_NONE ;
 int WINED3D_SM1_DCL_USAGE_INDEX_MASK ;
 int WINED3D_SM1_DCL_USAGE_INDEX_SHIFT ;
 int WINED3D_SM1_DCL_USAGE_MASK ;
 int WINED3D_SM1_DCL_USAGE_SHIFT ;
 int WINED3D_SM1_RESOURCE_TYPE_MASK ;
 int WINED3D_SM1_RESOURCE_TYPE_SHIFT ;
 int * resource_type_table ;
 int shader_parse_dst_param (int,int *,int *) ;

__attribute__((used)) static void shader_sm1_read_semantic(const DWORD **ptr, struct wined3d_shader_semantic *semantic)
{
    enum wined3d_sm1_resource_type resource_type;
    DWORD usage_token = *(*ptr)++;
    DWORD dst_token = *(*ptr)++;

    semantic->usage = (usage_token & WINED3D_SM1_DCL_USAGE_MASK) >> WINED3D_SM1_DCL_USAGE_SHIFT;
    semantic->usage_idx = (usage_token & WINED3D_SM1_DCL_USAGE_INDEX_MASK) >> WINED3D_SM1_DCL_USAGE_INDEX_SHIFT;
    resource_type = (usage_token & WINED3D_SM1_RESOURCE_TYPE_MASK) >> WINED3D_SM1_RESOURCE_TYPE_SHIFT;
    if (resource_type >= ARRAY_SIZE(resource_type_table))
    {
        FIXME("Unhandled resource type %#x.\n", resource_type);
        semantic->resource_type = WINED3D_SHADER_RESOURCE_NONE;
    }
    else
    {
        semantic->resource_type = resource_type_table[resource_type];
    }
    semantic->resource_data_type = WINED3D_DATA_FLOAT;
    shader_parse_dst_param(dst_token, ((void*)0), &semantic->reg);
}
