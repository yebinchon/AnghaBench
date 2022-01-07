
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3d_light {int light7; int dwLightIndex; TYPE_1__* active_viewport; } ;
struct d3d_device {int IDirect3DDevice7_iface; } ;
struct TYPE_2__ {struct d3d_device* active_device; } ;


 int IDirect3DDevice7_SetLight (int *,int ,int *) ;
 int TRACE (char*,struct d3d_light*) ;

__attribute__((used)) static void light_update(struct d3d_light *light)
{
    struct d3d_device *device;

    TRACE("light %p.\n", light);

    if (!light->active_viewport || !light->active_viewport->active_device) return;
    device = light->active_viewport->active_device;

    IDirect3DDevice7_SetLight(&device->IDirect3DDevice7_iface, light->dwLightIndex, &light->light7);
}
