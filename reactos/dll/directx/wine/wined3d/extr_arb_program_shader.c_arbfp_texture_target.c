
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_gl_resource_type { ____Placeholder_wined3d_gl_resource_type } wined3d_gl_resource_type ;
__attribute__((used)) static const char *arbfp_texture_target(enum wined3d_gl_resource_type type)
{
    switch(type)
    {
        case 132:
            return "1D";
        case 131:
            return "2D";
        case 130:
            return "3D";
        case 129:
            return "CUBE";
        case 128:
            return "RECT";
        default:
            return "unexpected_resource_type";
    }
}
