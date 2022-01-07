
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_timestamp_query {int id; struct wined3d_context* context; int entry; } ;
struct wined3d_context {scalar_t__ free_timestamp_query_count; int * free_timestamp_queries; int free_timestamp_query_size; } ;


 int ERR (char*,int ,struct wined3d_context*) ;
 int list_remove (int *) ;
 int wined3d_array_reserve (void**,int *,scalar_t__,int) ;

void context_free_timestamp_query(struct wined3d_timestamp_query *query)
{
    struct wined3d_context *context = query->context;

    list_remove(&query->entry);
    query->context = ((void*)0);

    if (!wined3d_array_reserve((void **)&context->free_timestamp_queries,
            &context->free_timestamp_query_size, context->free_timestamp_query_count + 1,
            sizeof(*context->free_timestamp_queries)))
    {
        ERR("Failed to grow free list, leaking query %u in context %p.\n", query->id, context);
        return;
    }

    context->free_timestamp_queries[context->free_timestamp_query_count++] = query->id;
}
