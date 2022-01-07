
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct wined3d_pipeline_statistics_query {int entry; struct wined3d_context* context; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {int free_pipeline_statistics_query_count; int pipeline_statistics_queries; TYPE_1__* free_pipeline_statistics_queries; struct wined3d_gl_info* gl_info; } ;


 int ARRAY_SIZE (int ) ;
 int GL_EXTCALL (int ) ;
 int checkGLcall (char*) ;
 int glGenQueries (int ,int ) ;
 int list_add_head (int *,int *) ;

void context_alloc_pipeline_statistics_query(struct wined3d_context *context,
        struct wined3d_pipeline_statistics_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_pipeline_statistics_query_count)
    {
        query->u = context->free_pipeline_statistics_queries[--context->free_pipeline_statistics_query_count];
    }
    else
    {
        GL_EXTCALL(glGenQueries(ARRAY_SIZE(query->u.id), query->u.id));
        checkGLcall("glGenQueries");
    }

    query->context = context;
    list_add_head(&context->pipeline_statistics_queries, &query->entry);
}
