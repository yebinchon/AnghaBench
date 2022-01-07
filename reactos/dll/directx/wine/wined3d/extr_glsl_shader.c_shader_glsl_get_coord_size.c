
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
struct TYPE_2__ {unsigned int coord_size; } ;
typedef int BOOL ;


 int WINED3D_SHADER_RESOURCE_TEXTURE_1DARRAY ;
 int WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY ;
 TYPE_1__* resource_type_info ;

__attribute__((used)) static void shader_glsl_get_coord_size(enum wined3d_shader_resource_type resource_type,
        unsigned int *coord_size, unsigned int *deriv_size)
{
    const BOOL is_array = resource_type == WINED3D_SHADER_RESOURCE_TEXTURE_1DARRAY
            || resource_type == WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY;

    *coord_size = resource_type_info[resource_type].coord_size;
    *deriv_size = *coord_size;
    if (is_array)
        --(*deriv_size);
}
