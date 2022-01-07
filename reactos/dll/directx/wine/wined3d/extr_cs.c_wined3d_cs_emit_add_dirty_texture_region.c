
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture {int resource; } ;
struct wined3d_cs_add_dirty_texture_region {unsigned int layer; struct wined3d_texture* texture; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_add_dirty_texture_region* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_ADD_DIRTY_TEXTURE_REGION ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_add_dirty_texture_region* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (int *) ;

void wined3d_cs_emit_add_dirty_texture_region(struct wined3d_cs *cs,
        struct wined3d_texture *texture, unsigned int layer)
{
    struct wined3d_cs_add_dirty_texture_region *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_ADD_DIRTY_TEXTURE_REGION;
    op->texture = texture;
    op->layer = layer;

    wined3d_resource_acquire(&texture->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
