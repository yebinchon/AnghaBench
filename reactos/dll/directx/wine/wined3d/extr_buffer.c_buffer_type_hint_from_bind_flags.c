
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int GLenum ;


 size_t ARB_TEXTURE_BUFFER_OBJECT ;
 int FIXME (char*,unsigned int) ;
 int GL_ARRAY_BUFFER ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_TEXTURE_BUFFER ;
 int GL_TRANSFORM_FEEDBACK_BUFFER ;
 int GL_UNIFORM_BUFFER ;
 unsigned int WINED3D_BIND_CONSTANT_BUFFER ;
 unsigned int WINED3D_BIND_INDEX_BUFFER ;
 unsigned int WINED3D_BIND_SHADER_RESOURCE ;
 unsigned int WINED3D_BIND_STREAM_OUTPUT ;
 unsigned int WINED3D_BIND_UNORDERED_ACCESS ;
 unsigned int WINED3D_BIND_VERTEX_BUFFER ;

__attribute__((used)) static GLenum buffer_type_hint_from_bind_flags(const struct wined3d_gl_info *gl_info,
        unsigned int bind_flags)
{
    if (bind_flags == WINED3D_BIND_INDEX_BUFFER)
        return GL_ELEMENT_ARRAY_BUFFER;

    if (bind_flags & (WINED3D_BIND_SHADER_RESOURCE | WINED3D_BIND_UNORDERED_ACCESS)
            && gl_info->supported[ARB_TEXTURE_BUFFER_OBJECT])
        return GL_TEXTURE_BUFFER;

    if (bind_flags & WINED3D_BIND_CONSTANT_BUFFER)
        return GL_UNIFORM_BUFFER;

    if (bind_flags & WINED3D_BIND_STREAM_OUTPUT)
        return GL_TRANSFORM_FEEDBACK_BUFFER;

    if (bind_flags & ~(WINED3D_BIND_VERTEX_BUFFER | WINED3D_BIND_INDEX_BUFFER))
        FIXME("Unhandled bind flags %#x.\n", bind_flags);

    return GL_ARRAY_BUFFER;
}
