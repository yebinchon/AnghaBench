
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swapchain_destroy_contexts (void*) ;

__attribute__((used)) static void wined3d_swapchain_destroy_object(void *object)
{
    swapchain_destroy_contexts(object);
}
