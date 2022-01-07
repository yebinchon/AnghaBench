
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {TYPE_3__* adapter; TYPE_1__* shader_backend; int cs; } ;
struct wined3d_context {int destroy_delayed; scalar_t__ tid; int destroyed; struct wined3d_context* texture_type; struct wined3d_gl_info* gl_info; int current; int * swapchain; scalar_t__ level; } ;
struct TYPE_6__ {TYPE_2__* fragment_pipe; } ;
struct TYPE_5__ {int (* free_context_data ) (struct wined3d_context*) ;} ;
struct TYPE_4__ {int (* shader_free_context_data ) (struct wined3d_context*) ;} ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ GetCurrentThreadId () ;
 int TRACE (char*,struct wined3d_context*) ;
 scalar_t__ TRUE ;
 int TlsSetValue (int ,int *) ;
 int context_destroy_gl_resources (struct wined3d_context*) ;
 int device_context_remove (struct wined3d_device*,struct wined3d_context*) ;
 struct wined3d_gl_info* heap_alloc (int) ;
 int heap_free (struct wined3d_context*) ;
 int stub1 (struct wined3d_context*) ;
 int stub2 (struct wined3d_context*) ;
 int wined3d_context_tls_idx ;
 int wined3d_from_cs (int ) ;

void context_destroy(struct wined3d_device *device, struct wined3d_context *context)
{
    BOOL destroy;

    TRACE("Destroying ctx %p\n", context);

    wined3d_from_cs(device->cs);



    if (context->level)
    {
        TRACE("Delaying destruction of context %p.\n", context);
        context->destroy_delayed = 1;

        context->swapchain = ((void*)0);
        return;
    }

    if (context->tid == GetCurrentThreadId() || !context->current)
    {
        context_destroy_gl_resources(context);
        TlsSetValue(wined3d_context_tls_idx, ((void*)0));
        destroy = TRUE;
    }
    else
    {


        struct wined3d_gl_info *gl_info = heap_alloc(sizeof(*gl_info));
        *gl_info = *context->gl_info;
        context->gl_info = gl_info;
        context->destroyed = 1;
        destroy = FALSE;
    }

    device->shader_backend->shader_free_context_data(context);
    device->adapter->fragment_pipe->free_context_data(context);
    heap_free(context->texture_type);
    device_context_remove(device, context);
    if (destroy)
        heap_free(context);
}
