
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {int type; int device; } ;


 int context_resource_released (int ,struct wined3d_resource*,int ) ;
 int wined3d_resource_free_sysmem (struct wined3d_resource*) ;
 int wined3d_resource_release (struct wined3d_resource*) ;

__attribute__((used)) static void wined3d_resource_destroy_object(void *object)
{
    struct wined3d_resource *resource = object;

    wined3d_resource_free_sysmem(resource);
    context_resource_released(resource->device, resource, resource->type);
    wined3d_resource_release(resource);
}
