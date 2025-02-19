
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* p_glDrawBuffer ) (scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {scalar_t__ offscreen_rendering_mode; } ;
typedef scalar_t__ GLenum ;
typedef int DWORD ;


 size_t ARB_DRAW_BUFFERS ;
 int ERR (char*) ;
 scalar_t__ GL_COLOR_ATTACHMENT0 ;
 int GL_EXTCALL (int ) ;
 scalar_t__ GL_NONE ;
 int MAX_RENDER_TARGET_VIEWS ;
 scalar_t__ ORM_FBO ;
 int checkGLcall (char*) ;
 scalar_t__ draw_buffer_from_rt_mask (int) ;
 int glDrawBuffers (unsigned int,scalar_t__*) ;
 scalar_t__ is_rt_mask_onscreen (int) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 TYPE_3__ wined3d_settings ;

__attribute__((used)) static void context_apply_draw_buffers(struct wined3d_context *context, DWORD rt_mask)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum draw_buffers[MAX_RENDER_TARGET_VIEWS];

    if (!rt_mask)
    {
        gl_info->gl_ops.gl.p_glDrawBuffer(GL_NONE);
    }
    else if (is_rt_mask_onscreen(rt_mask))
    {
        gl_info->gl_ops.gl.p_glDrawBuffer(draw_buffer_from_rt_mask(rt_mask));
    }
    else
    {
        if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
        {
            unsigned int i = 0;

            while (rt_mask)
            {
                if (rt_mask & 1)
                    draw_buffers[i] = GL_COLOR_ATTACHMENT0 + i;
                else
                    draw_buffers[i] = GL_NONE;

                rt_mask >>= 1;
                ++i;
            }

            if (gl_info->supported[ARB_DRAW_BUFFERS])
            {
                GL_EXTCALL(glDrawBuffers(i, draw_buffers));
            }
            else
            {
                gl_info->gl_ops.gl.p_glDrawBuffer(draw_buffers[0]);
            }
        }
        else
        {
            ERR("Unexpected draw buffers mask with backbuffer ORM.\n");
        }
    }

    checkGLcall("apply draw buffers");
}
