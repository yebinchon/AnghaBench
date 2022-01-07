
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_pipeline_statistics_query {int u; struct wined3d_context* context; int entry; } ;
struct wined3d_context {scalar_t__ free_pipeline_statistics_query_count; int * free_pipeline_statistics_queries; int free_pipeline_statistics_query_size; } ;


 int ERR (char*,struct wined3d_context*) ;
 int list_remove (int *) ;
 int wined3d_array_reserve (void**,int *,scalar_t__,int) ;

void context_free_pipeline_statistics_query(struct wined3d_pipeline_statistics_query *query)
{
    struct wined3d_context *context = query->context;

    list_remove(&query->entry);
    query->context = ((void*)0);

    if (!wined3d_array_reserve((void **)&context->free_pipeline_statistics_queries,
            &context->free_pipeline_statistics_query_size, context->free_pipeline_statistics_query_count + 1,
            sizeof(*context->free_pipeline_statistics_queries)))
    {
        ERR("Failed to grow free list, leaking GL queries in context %p.\n", context);
        return;
    }

    context->free_pipeline_statistics_queries[context->free_pipeline_statistics_query_count++] = query->u;
}
