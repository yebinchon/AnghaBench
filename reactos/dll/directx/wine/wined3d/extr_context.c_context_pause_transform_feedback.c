
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {int transform_feedback_paused; int transform_feedback_active; struct wined3d_gl_info* gl_info; } ;
typedef scalar_t__ BOOL ;


 size_t ARB_TRANSFORM_FEEDBACK2 ;
 int GL_EXTCALL (int ) ;
 int WARN (char*) ;
 int checkGLcall (char*) ;
 int context_end_transform_feedback (struct wined3d_context*) ;
 int glPauseTransformFeedback () ;

__attribute__((used)) static void context_pause_transform_feedback(struct wined3d_context *context, BOOL force)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!context->transform_feedback_active || context->transform_feedback_paused)
        return;

    if (gl_info->supported[ARB_TRANSFORM_FEEDBACK2])
    {
        GL_EXTCALL(glPauseTransformFeedback());
        checkGLcall("glPauseTransformFeedback");
        context->transform_feedback_paused = 1;
        return;
    }

    WARN("Cannot pause transform feedback operations.\n");

    if (force)
        context_end_transform_feedback(context);
}
