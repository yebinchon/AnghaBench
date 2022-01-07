
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int needs_set; int device; scalar_t__ destroy_delayed; int * restore_dc; int * restore_ctx; int gl_info; int level; } ;


 int TRACE (char*,struct wined3d_context*,...) ;
 int WARN (char*,struct wined3d_context*) ;
 scalar_t__ WARN_ON (int ) ;
 int context_destroy (int ,struct wined3d_context*) ;
 struct wined3d_context* context_get_current () ;
 int context_restore_gl_context (int ,int *,int *) ;
 scalar_t__ context_restore_pixel_format (struct wined3d_context*) ;
 int d3d ;

void context_release(struct wined3d_context *context)
{
    TRACE("Releasing context %p, level %u.\n", context, context->level);

    if (WARN_ON(d3d))
    {
        if (!context->level)
            WARN("Context %p is not active.\n", context);
        else if (context != context_get_current())
            WARN("Context %p is not the current context.\n", context);
    }

    if (!--context->level)
    {
        if (context_restore_pixel_format(context))
            context->needs_set = 1;
        if (context->restore_ctx)
        {
            TRACE("Restoring GL context %p on device context %p.\n", context->restore_ctx, context->restore_dc);
            context_restore_gl_context(context->gl_info, context->restore_dc, context->restore_ctx);
            context->restore_ctx = ((void*)0);
            context->restore_dc = ((void*)0);
        }

        if (context->destroy_delayed)
        {
            TRACE("Destroying context %p.\n", context);
            context_destroy(context->device, context);
        }
    }
}
