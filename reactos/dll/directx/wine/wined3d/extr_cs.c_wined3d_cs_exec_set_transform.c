
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_cs_set_transform {size_t state; int matrix; } ;
struct TYPE_6__ {int * transforms; } ;
struct wined3d_cs {TYPE_5__* device; TYPE_1__ state; } ;
struct TYPE_10__ {TYPE_4__* adapter; } ;
struct TYPE_7__ {int ffp_vertex_blend_matrices; } ;
struct TYPE_8__ {TYPE_2__ limits; } ;
struct TYPE_9__ {TYPE_3__ d3d_info; } ;


 int STATE_TRANSFORM (size_t) ;
 size_t WINED3D_TS_WORLD_MATRIX (int ) ;
 int device_invalidate_state (TYPE_5__*,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_transform(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_transform *op = data;

    cs->state.transforms[op->state] = op->matrix;
    if (op->state < WINED3D_TS_WORLD_MATRIX(cs->device->adapter->d3d_info.limits.ffp_vertex_blend_matrices))
        device_invalidate_state(cs->device, STATE_TRANSFORM(op->state));
}
