
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {int access_count; } ;


 int InterlockedDecrement (int *) ;

__attribute__((used)) static inline void wined3d_resource_release(struct wined3d_resource *resource)
{
    InterlockedDecrement(&resource->access_count);
}
