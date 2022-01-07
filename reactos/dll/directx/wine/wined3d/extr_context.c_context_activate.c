
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int dummy; } ;
struct wined3d_context {scalar_t__ needs_set; int valid; } ;


 int ERR (char*) ;
 int context_enter (struct wined3d_context*) ;
 struct wined3d_context* context_get_current () ;
 int context_set_current (struct wined3d_context*) ;
 int context_set_gl_context (struct wined3d_context*) ;
 int context_setup_target (struct wined3d_context*,struct wined3d_texture*,unsigned int) ;
 int context_update_window (struct wined3d_context*) ;

__attribute__((used)) static void context_activate(struct wined3d_context *context,
        struct wined3d_texture *texture, unsigned int sub_resource_idx)
{
    context_enter(context);
    context_update_window(context);
    context_setup_target(context, texture, sub_resource_idx);
    if (!context->valid)
        return;

    if (context != context_get_current())
    {
        if (!context_set_current(context))
            ERR("Failed to activate the new context.\n");
    }
    else if (context->needs_set)
    {
        context_set_gl_context(context);
    }
}
