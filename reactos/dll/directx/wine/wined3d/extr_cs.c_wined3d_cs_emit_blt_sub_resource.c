
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource {int dummy; } ;
struct wined3d_blt_fx {int dummy; } ;
struct wined3d_box {int dummy; } ;
struct wined3d_cs_blt_sub_resource {unsigned int dst_sub_resource_idx; unsigned int src_sub_resource_idx; int flags; int filter; struct wined3d_blt_fx fx; struct wined3d_box src_box; struct wined3d_resource* src_resource; struct wined3d_box dst_box; struct wined3d_resource* dst_resource; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
typedef enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
struct TYPE_2__ {int (* finish ) (struct wined3d_cs*,int ) ;int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_blt_sub_resource* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
typedef int DWORD ;


 int WINED3D_BLT_SYNCHRONOUS ;
 int WINED3D_CS_OP_BLT_SUB_RESOURCE ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 int memset (struct wined3d_blt_fx*,int ,int) ;
 struct wined3d_cs_blt_sub_resource* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int stub3 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (struct wined3d_resource*) ;

void wined3d_cs_emit_blt_sub_resource(struct wined3d_cs *cs, struct wined3d_resource *dst_resource,
        unsigned int dst_sub_resource_idx, const struct wined3d_box *dst_box, struct wined3d_resource *src_resource,
        unsigned int src_sub_resource_idx, const struct wined3d_box *src_box, DWORD flags,
        const struct wined3d_blt_fx *fx, enum wined3d_texture_filter_type filter)
{
    struct wined3d_cs_blt_sub_resource *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_BLT_SUB_RESOURCE;
    op->dst_resource = dst_resource;
    op->dst_sub_resource_idx = dst_sub_resource_idx;
    op->dst_box = *dst_box;
    op->src_resource = src_resource;
    op->src_sub_resource_idx = src_sub_resource_idx;
    op->src_box = *src_box;
    op->flags = flags;
    if (fx)
        op->fx = *fx;
    else
        memset(&op->fx, 0, sizeof(op->fx));
    op->filter = filter;

    wined3d_resource_acquire(dst_resource);
    if (src_resource)
        wined3d_resource_acquire(src_resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
    if (flags & WINED3D_BLT_SYNCHRONOUS)
        cs->ops->finish(cs, WINED3D_CS_QUEUE_DEFAULT);
}
