
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_light_info {int glIndex; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
struct wined3d_cs_set_light_enable {scalar_t__ enable; int idx; } ;
struct wined3d_cs {int state; struct wined3d_device* device; } ;
struct TYPE_2__ {int d3d_info; } ;


 int ERR (char*) ;
 int STATE_ACTIVELIGHT (int) ;
 int STATE_LIGHT_TYPE ;
 int device_invalidate_state (struct wined3d_device*,int ) ;
 int wined3d_state_enable_light (int *,int *,struct wined3d_light_info*,scalar_t__) ;
 struct wined3d_light_info* wined3d_state_get_light (int *,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_light_enable(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_light_enable *op = data;
    struct wined3d_device *device = cs->device;
    struct wined3d_light_info *light_info;
    int prev_idx;

    if (!(light_info = wined3d_state_get_light(&cs->state, op->idx)))
    {
        ERR("Light doesn't exist.\n");
        return;
    }

    prev_idx = light_info->glIndex;
    wined3d_state_enable_light(&cs->state, &device->adapter->d3d_info, light_info, op->enable);
    if (light_info->glIndex != prev_idx)
    {
        device_invalidate_state(device, STATE_LIGHT_TYPE);
        device_invalidate_state(device, STATE_ACTIVELIGHT(op->enable ? light_info->glIndex : prev_idx));
    }
}
