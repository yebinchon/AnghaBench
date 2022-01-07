
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLhalfNV ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLbyte ;


 int FIXME (char*,int) ;
__attribute__((used)) static unsigned int calculate_vertex_attribute_size(GLenum type, unsigned int component_count)
{
    switch (type)
    {
        case 134:
            return component_count * sizeof(GLhalfNV);
        case 135:
            return component_count * sizeof(GLfloat);
        case 136:
            return component_count * sizeof(GLbyte);
        case 131:
            return component_count * sizeof(GLubyte);
        case 132:
            return component_count * sizeof(GLshort);
        case 128:
            return component_count * sizeof(GLushort);
        case 133:
            return component_count * sizeof(GLint);
        case 130:
            return component_count * sizeof(GLuint);
        case 129:
            return sizeof(GLuint);
        default:
            FIXME("Unhandled GL type %#x.\n", type);
            return 0;
    }
}
