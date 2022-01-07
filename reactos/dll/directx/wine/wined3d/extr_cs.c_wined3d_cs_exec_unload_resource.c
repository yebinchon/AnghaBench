
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource {TYPE_1__* resource_ops; } ;
struct wined3d_cs_unload_resource {struct wined3d_resource* resource; } ;
struct wined3d_cs {int dummy; } ;
struct TYPE_2__ {int (* resource_unload ) (struct wined3d_resource*) ;} ;


 int stub1 (struct wined3d_resource*) ;
 int wined3d_resource_release (struct wined3d_resource*) ;

__attribute__((used)) static void wined3d_cs_exec_unload_resource(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_unload_resource *op = data;
    struct wined3d_resource *resource = op->resource;

    resource->resource_ops->resource_unload(resource);
    wined3d_resource_release(resource);
}
