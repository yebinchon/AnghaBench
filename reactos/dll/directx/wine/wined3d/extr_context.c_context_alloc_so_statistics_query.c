
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * id; } ;
struct wined3d_so_statistics_query {int entry; struct wined3d_context* context; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {int free_so_statistics_query_count; int so_statistics_queries; TYPE_1__* free_so_statistics_queries; struct wined3d_gl_info* gl_info; } ;


 int ARRAY_SIZE (int *) ;
 int GL_EXTCALL (int ) ;
 int TRACE (char*,int ,int ,struct wined3d_context*) ;
 int checkGLcall (char*) ;
 int glGenQueries (int ,int *) ;
 int list_add_head (int *,int *) ;

void context_alloc_so_statistics_query(struct wined3d_context *context,
        struct wined3d_so_statistics_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_so_statistics_query_count)
    {
        query->u = context->free_so_statistics_queries[--context->free_so_statistics_query_count];
    }
    else
    {
        GL_EXTCALL(glGenQueries(ARRAY_SIZE(query->u.id), query->u.id));
        checkGLcall("glGenQueries");

        TRACE("Allocated SO statistics queries %u, %u in context %p.\n",
                query->u.id[0], query->u.id[1], context);
    }

    query->context = context;
    list_add_head(&context->so_statistics_queries, &query->entry);
}
