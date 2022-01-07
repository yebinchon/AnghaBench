
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_unordered_access_view {int * resource; } ;
struct wined3d_cs_copy_uav_counter {TYPE_1__* buffer; int offset; struct wined3d_unordered_access_view* view; } ;
struct wined3d_cs {int device; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_2__ {int resource; } ;


 struct wined3d_context* context_acquire (int ,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int wined3d_resource_release (int *) ;
 int wined3d_unordered_access_view_copy_counter (struct wined3d_unordered_access_view*,TYPE_1__*,int ,struct wined3d_context*) ;

__attribute__((used)) static void wined3d_cs_exec_copy_uav_counter(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_copy_uav_counter *op = data;
    struct wined3d_unordered_access_view *view = op->view;
    struct wined3d_context *context;

    context = context_acquire(cs->device, ((void*)0), 0);
    wined3d_unordered_access_view_copy_counter(view, op->buffer, op->offset, context);
    context_release(context);

    wined3d_resource_release(&op->buffer->resource);
    wined3d_resource_release(view->resource);
}
