
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_uvec4 {int dummy; } ;
struct wined3d_unordered_access_view {int resource; } ;
struct wined3d_cs_clear_unordered_access_view {struct wined3d_uvec4 clear_value; struct wined3d_unordered_access_view* view; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_clear_unordered_access_view* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_CLEAR_UNORDERED_ACCESS_VIEW ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_clear_unordered_access_view* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (int ) ;

void wined3d_cs_emit_clear_unordered_access_view_uint(struct wined3d_cs *cs,
        struct wined3d_unordered_access_view *view, const struct wined3d_uvec4 *clear_value)
{
    struct wined3d_cs_clear_unordered_access_view *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_CLEAR_UNORDERED_ACCESS_VIEW;
    op->view = view;
    op->clear_value = *clear_value;

    wined3d_resource_acquire(view->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
