
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dwFlags; } ;
struct d3d_light {TYPE_2__ light; int dwLightIndex; TYPE_1__* active_viewport; } ;
struct d3d_device {int IDirect3DDevice7_iface; } ;
struct TYPE_3__ {struct d3d_device* active_device; } ;


 int D3DLIGHT_ACTIVE ;
 int FALSE ;
 int IDirect3DDevice7_LightEnable (int *,int ,int ) ;
 int TRACE (char*,struct d3d_light*) ;

void light_deactivate(struct d3d_light *light)
{
    struct d3d_device *device;

    TRACE("light %p.\n", light);

    if (!light->active_viewport || !light->active_viewport->active_device) return;
    device = light->active_viewport->active_device;

    if (light->light.dwFlags & D3DLIGHT_ACTIVE)
    {
        IDirect3DDevice7_LightEnable(&device->IDirect3DDevice7_iface, light->dwLightIndex, FALSE);
        light->light.dwFlags &= ~D3DLIGHT_ACTIVE;
    }
}
