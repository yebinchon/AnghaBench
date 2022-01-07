
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_sampler_state {size_t sampler_idx; size_t state; int value; } ;
struct TYPE_2__ {int ** sampler_states; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_SAMPLER (size_t) ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_sampler_state(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_sampler_state *op = data;

    cs->state.sampler_states[op->sampler_idx][op->state] = op->value;
    device_invalidate_state(cs->device, STATE_SAMPLER(op->sampler_idx));
}
