
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_rasterizer_state {int state; } ;
struct TYPE_2__ {int rasterizer_state; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_FRONTFACE ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_rasterizer_state(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_rasterizer_state *op = data;

    cs->state.rasterizer_state = op->state;
    device_invalidate_state(cs->device, STATE_FRONTFACE);
}
