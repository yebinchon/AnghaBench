
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_query {int dummy; } ;
struct wined3d_cs_query_issue {int flags; struct wined3d_query* query; int opcode; } ;
struct wined3d_cs {int queries_flushed; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_query_issue* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
typedef int DWORD ;


 int FALSE ;
 int WINED3D_CS_OP_QUERY_ISSUE ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_query_issue* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_query_issue(struct wined3d_cs *cs, struct wined3d_query *query, DWORD flags)
{
    struct wined3d_cs_query_issue *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_QUERY_ISSUE;
    op->query = query;
    op->flags = flags;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
    cs->queries_flushed = FALSE;
}
