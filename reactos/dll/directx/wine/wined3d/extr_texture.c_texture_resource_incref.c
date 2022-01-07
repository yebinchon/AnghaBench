
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {int dummy; } ;
typedef int ULONG ;


 int texture_from_resource (struct wined3d_resource*) ;
 int wined3d_texture_incref (int ) ;

__attribute__((used)) static ULONG texture_resource_incref(struct wined3d_resource *resource)
{
    return wined3d_texture_incref(texture_from_resource(resource));
}
