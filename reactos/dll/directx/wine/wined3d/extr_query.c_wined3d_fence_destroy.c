
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_fence {int dummy; } ;


 int heap_free (struct wined3d_fence*) ;
 int wined3d_fence_free (struct wined3d_fence*) ;

void wined3d_fence_destroy(struct wined3d_fence *fence)
{
    wined3d_fence_free(fence);
    heap_free(fence);
}
