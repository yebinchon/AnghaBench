
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_resource_view {int resource; } ;
struct wined3d_cs_generate_mipmaps {struct wined3d_shader_resource_view* view; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_generate_mipmaps* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_GENERATE_MIPMAPS ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_generate_mipmaps* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (int ) ;

void wined3d_cs_emit_generate_mipmaps(struct wined3d_cs *cs, struct wined3d_shader_resource_view *view)
{
    struct wined3d_cs_generate_mipmaps *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_GENERATE_MIPMAPS;
    op->view = view;

    wined3d_resource_acquire(view->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
