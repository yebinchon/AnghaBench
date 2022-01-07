
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
typedef int BOOL ;


 int WINED3D_SHADER_RESOURCE_BUFFER ;
 int is_multisampled (int) ;

__attribute__((used)) static BOOL is_mipmapped(enum wined3d_shader_resource_type resource_type)
{
    return resource_type != WINED3D_SHADER_RESOURCE_BUFFER && !is_multisampled(resource_type);
}
