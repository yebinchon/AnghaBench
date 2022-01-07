
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource {TYPE_1__* resource_ops; } ;
typedef int ULONG ;
struct TYPE_2__ {int (* resource_decref ) (struct wined3d_resource*) ;} ;


 int stub1 (struct wined3d_resource*) ;

__attribute__((used)) static inline ULONG wined3d_resource_decref(struct wined3d_resource *resource)
{
    return resource->resource_ops->resource_decref(resource);
}
