
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_context {int aux_buffers; } ;
struct TYPE_2__ {int offscreen_rendering_mode; } ;
typedef int GLenum ;


 int FIXME (char*,int) ;
 int GL_AUX0 ;
 int GL_BACK ;
 int GL_COLOR_ATTACHMENT0 ;


 TYPE_1__ wined3d_settings ;

GLenum context_get_offscreen_gl_buffer(const struct wined3d_context *context)
{
    switch (wined3d_settings.offscreen_rendering_mode)
    {
        case 128:
            return GL_COLOR_ATTACHMENT0;

        case 129:
            return context->aux_buffers > 0 ? GL_AUX0 : GL_BACK;

        default:
            FIXME("Unhandled offscreen rendering mode %#x.\n", wined3d_settings.offscreen_rendering_mode);
            return GL_BACK;
    }
}
