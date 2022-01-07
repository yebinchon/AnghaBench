
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource {int dummy; } ;
struct wined3d_map_desc {int dummy; } ;
struct wined3d_cs_map {unsigned int sub_resource_idx; unsigned int flags; int * hr; struct wined3d_box const* box; struct wined3d_map_desc* map_desc; struct wined3d_resource* resource; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct wined3d_box {int dummy; } ;
struct TYPE_2__ {int (* finish ) (struct wined3d_cs*,int ) ;int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_map* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
typedef int HRESULT ;


 int WINED3D_CS_OP_MAP ;
 int WINED3D_CS_QUEUE_MAP ;
 struct wined3d_cs_map* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int stub3 (struct wined3d_cs*,int ) ;
 int wined3d_not_from_cs (struct wined3d_cs*) ;

HRESULT wined3d_cs_map(struct wined3d_cs *cs, struct wined3d_resource *resource, unsigned int sub_resource_idx,
        struct wined3d_map_desc *map_desc, const struct wined3d_box *box, unsigned int flags)
{
    struct wined3d_cs_map *op;
    HRESULT hr;



    wined3d_not_from_cs(cs);

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_MAP);
    op->opcode = WINED3D_CS_OP_MAP;
    op->resource = resource;
    op->sub_resource_idx = sub_resource_idx;
    op->map_desc = map_desc;
    op->box = box;
    op->flags = flags;
    op->hr = &hr;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_MAP);
    cs->ops->finish(cs, WINED3D_CS_QUEUE_MAP);

    return hr;
}
