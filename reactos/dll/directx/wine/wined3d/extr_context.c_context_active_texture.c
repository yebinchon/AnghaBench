
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {unsigned int active_texture; } ;


 int GL_EXTCALL (int ) ;
 scalar_t__ GL_TEXTURE0 ;
 int checkGLcall (char*) ;
 int glActiveTexture (scalar_t__) ;

void context_active_texture(struct wined3d_context *context, const struct wined3d_gl_info *gl_info, unsigned int unit)
{
    GL_EXTCALL(glActiveTexture(GL_TEXTURE0 + unit));
    checkGLcall("glActiveTexture");
    context->active_texture = unit;
}
