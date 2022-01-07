
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_primitive_type { ____Placeholder_wined3d_primitive_type } wined3d_primitive_type ;
typedef int GLenum ;
 int gl_primitive_type_from_d3d (int) ;

__attribute__((used)) static GLenum gl_tfb_primitive_type_from_d3d(enum wined3d_primitive_type primitive_type)
{
    GLenum gl_primitive_type = gl_primitive_type_from_d3d(primitive_type);
    switch (gl_primitive_type)
    {
        case 133:
            return 133;

        case 135:
        case 134:
        case 136:
        case 137:
            return 137;

        case 130:
        case 129:
        case 128:
        case 131:
        case 132:
            return 132;

        default:
            return gl_primitive_type;
    }
}
