
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_primitive_type { ____Placeholder_wined3d_primitive_type } wined3d_primitive_type ;
typedef unsigned int GLenum ;


 int FIXME (char*,int ) ;
 unsigned int GL_LINES ;
 unsigned int GL_LINES_ADJACENCY_ARB ;
 unsigned int GL_LINE_STRIP ;
 unsigned int GL_LINE_STRIP_ADJACENCY_ARB ;
 unsigned int GL_PATCHES ;
 unsigned int GL_POINTS ;
 unsigned int GL_TRIANGLES ;
 unsigned int GL_TRIANGLES_ADJACENCY_ARB ;
 unsigned int GL_TRIANGLE_FAN ;
 unsigned int GL_TRIANGLE_STRIP ;
 unsigned int GL_TRIANGLE_STRIP_ADJACENCY_ARB ;
 int debug_d3dprimitivetype (int) ;

GLenum gl_primitive_type_from_d3d(enum wined3d_primitive_type primitive_type)
{
    switch (primitive_type)
    {
        case 134:
            return GL_POINTS;

        case 139:
            return GL_LINES;

        case 137:
            return GL_LINE_STRIP;

        case 132:
            return GL_TRIANGLES;

        case 130:
            return GL_TRIANGLE_STRIP;

        case 133:
            return GL_TRIANGLE_FAN;

        case 138:
            return GL_LINES_ADJACENCY_ARB;

        case 136:
            return GL_LINE_STRIP_ADJACENCY_ARB;

        case 131:
            return GL_TRIANGLES_ADJACENCY_ARB;

        case 129:
            return GL_TRIANGLE_STRIP_ADJACENCY_ARB;

        case 135:
            return GL_PATCHES;

        default:
            FIXME("Unhandled primitive type %s.\n", debug_d3dprimitivetype(primitive_type));
        case 128:
            return ~0u;
    }
}
