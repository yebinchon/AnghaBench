
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_unordered_access_view {int resource; } ;
struct wined3d_cs_clear_unordered_access_view {int clear_value; struct wined3d_unordered_access_view* view; } ;
struct wined3d_cs {int device; } ;
struct wined3d_context {int dummy; } ;


 struct wined3d_context* context_acquire (int ,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int wined3d_resource_release (int ) ;
 int wined3d_unordered_access_view_clear_uint (struct wined3d_unordered_access_view*,int *,struct wined3d_context*) ;

__attribute__((used)) static void wined3d_cs_exec_clear_unordered_access_view(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_clear_unordered_access_view *op = data;
    struct wined3d_unordered_access_view *view = op->view;
    struct wined3d_context *context;

    context = context_acquire(cs->device, ((void*)0), 0);
    wined3d_unordered_access_view_clear_uint(view, &op->clear_value, context);
    context_release(context);

    wined3d_resource_release(view->resource);
}
