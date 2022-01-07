
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_primitive_type { ____Placeholder_wined3d_primitive_type } wined3d_primitive_type ;
typedef int GLenum ;


 int FIXME (char*,int ) ;
 int WINED3D_PT_LINELIST ;
 int WINED3D_PT_LINELIST_ADJ ;
 int WINED3D_PT_LINESTRIP ;
 int WINED3D_PT_LINESTRIP_ADJ ;
 int WINED3D_PT_PATCH ;
 int WINED3D_PT_POINTLIST ;
 int WINED3D_PT_TRIANGLEFAN ;
 int WINED3D_PT_TRIANGLELIST ;
 int WINED3D_PT_TRIANGLELIST_ADJ ;
 int WINED3D_PT_TRIANGLESTRIP ;
 int WINED3D_PT_TRIANGLESTRIP_ADJ ;
 int WINED3D_PT_UNDEFINED ;
 int debug_d3dprimitivetype (int) ;

__attribute__((used)) static enum wined3d_primitive_type d3d_primitive_type_from_gl(GLenum primitive_type)
{
    switch (primitive_type)
    {
        case 133:
            return WINED3D_PT_POINTLIST;

        case 138:
            return WINED3D_PT_LINELIST;

        case 136:
            return WINED3D_PT_LINESTRIP;

        case 132:
            return WINED3D_PT_TRIANGLELIST;

        case 129:
            return WINED3D_PT_TRIANGLESTRIP;

        case 130:
            return WINED3D_PT_TRIANGLEFAN;

        case 137:
            return WINED3D_PT_LINELIST_ADJ;

        case 135:
            return WINED3D_PT_LINESTRIP_ADJ;

        case 131:
            return WINED3D_PT_TRIANGLELIST_ADJ;

        case 128:
            return WINED3D_PT_TRIANGLESTRIP_ADJ;

        case 134:
            return WINED3D_PT_PATCH;

        default:
            FIXME("Unhandled primitive type %s.\n", debug_d3dprimitivetype(primitive_type));
        case ~0u:
            return WINED3D_PT_UNDEFINED;
    }
}
