
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_format {scalar_t__ gl_view_class; int id; int rtInternal; int glGammaInternal; int glInternal; } ;
typedef scalar_t__ GLenum ;


 scalar_t__ GL_NONE ;
 int TRACE (char*,int ,scalar_t__) ;
 int debug_d3dformat (int ) ;
 scalar_t__ lookup_gl_view_class (int ) ;

__attribute__((used)) static void query_view_class(struct wined3d_format *format)
{
    GLenum internal_view_class, gamma_view_class, rt_view_class;

    internal_view_class = lookup_gl_view_class(format->glInternal);
    gamma_view_class = lookup_gl_view_class(format->glGammaInternal);
    rt_view_class = lookup_gl_view_class(format->rtInternal);

    if (internal_view_class == gamma_view_class || gamma_view_class == rt_view_class)
    {
        format->gl_view_class = internal_view_class;
        TRACE("Format %s is member of GL view class %#x.\n",
                debug_d3dformat(format->id), format->gl_view_class);
    }
    else
    {
        format->gl_view_class = GL_NONE;
    }
}
