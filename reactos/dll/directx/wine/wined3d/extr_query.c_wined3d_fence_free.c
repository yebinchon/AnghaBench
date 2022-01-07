
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_fence {scalar_t__ context; } ;


 int context_free_fence (struct wined3d_fence*) ;

__attribute__((used)) static void wined3d_fence_free(struct wined3d_fence *fence)
{
    if (fence->context)
        context_free_fence(fence);
}
