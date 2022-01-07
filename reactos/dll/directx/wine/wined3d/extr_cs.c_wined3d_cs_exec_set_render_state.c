
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_render_state {size_t state; int value; } ;
struct TYPE_2__ {int * render_states; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_RENDER (size_t) ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_render_state(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_render_state *op = data;

    cs->state.render_states[op->state] = op->value;
    device_invalidate_state(cs->device, STATE_RENDER(op->state));
}
