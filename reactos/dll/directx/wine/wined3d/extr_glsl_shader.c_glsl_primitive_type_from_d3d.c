
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_primitive_type { ____Placeholder_wined3d_primitive_type } wined3d_primitive_type ;


 int FIXME (char*,int ) ;







 int debug_d3dprimitivetype (int) ;

__attribute__((used)) static const char *glsl_primitive_type_from_d3d(enum wined3d_primitive_type primitive_type)
{
    switch (primitive_type)
    {
        case 131:
            return "points";

        case 134:
            return "lines";

        case 132:
            return "line_strip";

        case 130:
            return "triangles";

        case 128:
            return "triangle_strip";

        case 133:
            return "lines_adjacency";

        case 129:
            return "triangles_adjacency";

        default:
            FIXME("Unhandled primitive type %s.\n", debug_d3dprimitivetype(primitive_type));
            return "";
    }
}
