
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_swapchain {struct priv* priv; } ;
struct priv {scalar_t__ main_fb; int wrapped_fb; TYPE_1__* gl; } ;
struct TYPE_2__ {int es; int mpgl_caps; int (* BindFramebuffer ) (int ,scalar_t__) ;int (* GetFramebufferAttachmentParameteriv ) (int ,int ,int ,int*) ;scalar_t__ version; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_1__ GL ;


 int GL_BACK ;
 int GL_BACK_LEFT ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_FRAMEBUFFER ;
 int GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE ;
 int MPGL_CAP_FB ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,int ,int ,int*) ;
 int stub3 (int ,scalar_t__) ;

int ra_gl_ctx_color_depth(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;
    GL *gl = p->gl;

    if (!p->wrapped_fb)
        return 0;

    if ((gl->es < 300 && !gl->version) || !(gl->mpgl_caps & MPGL_CAP_FB))
        return 0;

    gl->BindFramebuffer(GL_FRAMEBUFFER, p->main_fb);

    GLenum obj = gl->version ? GL_BACK_LEFT : GL_BACK;
    if (p->main_fb)
        obj = GL_COLOR_ATTACHMENT0;

    GLint depth_g = 0;

    gl->GetFramebufferAttachmentParameteriv(GL_FRAMEBUFFER, obj,
                            GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE, &depth_g);

    gl->BindFramebuffer(GL_FRAMEBUFFER, 0);

    return depth_g;
}
