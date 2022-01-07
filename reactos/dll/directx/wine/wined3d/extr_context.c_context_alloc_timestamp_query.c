
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_timestamp_query {int entry; struct wined3d_context* context; int id; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {int free_timestamp_query_count; int timestamp_queries; int * free_timestamp_queries; struct wined3d_gl_info* gl_info; } ;


 int GL_EXTCALL (int ) ;
 int TRACE (char*,int ,struct wined3d_context*) ;
 int checkGLcall (char*) ;
 int glGenQueries (int,int *) ;
 int list_add_head (int *,int *) ;

void context_alloc_timestamp_query(struct wined3d_context *context, struct wined3d_timestamp_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_timestamp_query_count)
    {
        query->id = context->free_timestamp_queries[--context->free_timestamp_query_count];
    }
    else
    {
        GL_EXTCALL(glGenQueries(1, &query->id));
        checkGLcall("glGenQueries");

        TRACE("Allocated timestamp query %u in context %p.\n", query->id, context);
    }

    query->context = context;
    list_add_head(&context->timestamp_queries, &query->entry);
}
