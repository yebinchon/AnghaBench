
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_gl_resource_type { ____Placeholder_wined3d_gl_resource_type } wined3d_gl_resource_type ;
typedef int GLenum ;


 int ERR (char*,int) ;
 int GL_RENDERBUFFER ;
 int GL_TEXTURE_1D ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_3D ;
 int GL_TEXTURE_CUBE_MAP_ARB ;
 int GL_TEXTURE_RECTANGLE_ARB ;
__attribute__((used)) static GLenum wined3d_gl_type_to_enum(enum wined3d_gl_resource_type type)
{
    switch (type)
    {
        case 132:
            return GL_TEXTURE_1D;
        case 131:
            return GL_TEXTURE_2D;
        case 130:
            return GL_TEXTURE_3D;
        case 129:
            return GL_TEXTURE_CUBE_MAP_ARB;
        case 128:
            return GL_TEXTURE_RECTANGLE_ARB;
        case 135:
            return GL_TEXTURE_2D;
        case 133:
            return GL_RENDERBUFFER;
        case 134:
            break;
    }
    ERR("Unexpected GL resource type %u.\n", type);
    return 0;
}
