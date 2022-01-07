
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {scalar_t__ transform_feedback_paused; scalar_t__ transform_feedback_active; struct wined3d_gl_info* gl_info; } ;


 int GL_EXTCALL (int ) ;
 int checkGLcall (char*) ;
 int glEndTransformFeedback () ;

void context_end_transform_feedback(struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    if (context->transform_feedback_active)
    {
        GL_EXTCALL(glEndTransformFeedback());
        checkGLcall("glEndTransformFeedback");
        context->transform_feedback_active = 0;
        context->transform_feedback_paused = 0;
    }
}
