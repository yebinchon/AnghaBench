
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_unordered_access_view {int dummy; } ;
struct wined3d_cs_set_unordered_access_view {int pipeline; unsigned int view_idx; unsigned int initial_count; struct wined3d_unordered_access_view* view; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
typedef enum wined3d_pipeline { ____Placeholder_wined3d_pipeline } wined3d_pipeline ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_set_unordered_access_view* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_SET_UNORDERED_ACCESS_VIEW ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_set_unordered_access_view* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_set_unordered_access_view(struct wined3d_cs *cs, enum wined3d_pipeline pipeline,
        unsigned int view_idx, struct wined3d_unordered_access_view *view, unsigned int initial_count)
{
    struct wined3d_cs_set_unordered_access_view *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_UNORDERED_ACCESS_VIEW;
    op->pipeline = pipeline;
    op->view_idx = view_idx;
    op->view = view;
    op->initial_count = initial_count;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
