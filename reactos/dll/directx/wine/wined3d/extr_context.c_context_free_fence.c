
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct wined3d_fence {TYPE_1__ object; struct wined3d_context* context; int entry; } ;
struct wined3d_context {scalar_t__ free_fence_count; TYPE_1__* free_fences; int free_fence_size; } ;


 int ERR (char*,int ,struct wined3d_context*) ;
 int list_remove (int *) ;
 int wined3d_array_reserve (void**,int *,scalar_t__,int) ;

void context_free_fence(struct wined3d_fence *fence)
{
    struct wined3d_context *context = fence->context;

    list_remove(&fence->entry);
    fence->context = ((void*)0);

    if (!wined3d_array_reserve((void **)&context->free_fences,
            &context->free_fence_size, context->free_fence_count + 1,
            sizeof(*context->free_fences)))
    {
        ERR("Failed to grow free list, leaking fence %u in context %p.\n", fence->object.id, context);
        return;
    }

    context->free_fences[context->free_fence_count++] = fence->object;
}
