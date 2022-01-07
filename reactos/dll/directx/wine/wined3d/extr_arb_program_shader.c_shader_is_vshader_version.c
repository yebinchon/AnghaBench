
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;
typedef int BOOL ;


 int WINED3D_SHADER_TYPE_VERTEX ;

__attribute__((used)) static BOOL shader_is_vshader_version(enum wined3d_shader_type type)
{
    return type == WINED3D_SHADER_TYPE_VERTEX;
}
