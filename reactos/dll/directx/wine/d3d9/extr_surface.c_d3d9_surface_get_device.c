
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3d9_surface {int * parent_device; TYPE_1__* texture; } ;
struct d3d9_device {int dummy; } ;
struct TYPE_2__ {int * parent_device; } ;
typedef int IDirect3DDevice9Ex ;


 struct d3d9_device* impl_from_IDirect3DDevice9Ex (int *) ;

struct d3d9_device *d3d9_surface_get_device(const struct d3d9_surface *surface)
{
    IDirect3DDevice9Ex *device;
    device = surface->texture ? surface->texture->parent_device : surface->parent_device;
    return impl_from_IDirect3DDevice9Ex(device);
}
