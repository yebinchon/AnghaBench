
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {int access_count; } ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static inline void wined3d_resource_acquire(struct wined3d_resource *resource)
{
    InterlockedIncrement(&resource->access_count);
}
