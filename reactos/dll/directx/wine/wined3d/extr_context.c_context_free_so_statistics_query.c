
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * id; } ;
struct wined3d_so_statistics_query {TYPE_1__ u; struct wined3d_context* context; int entry; } ;
struct wined3d_context {scalar_t__ free_so_statistics_query_count; TYPE_1__* free_so_statistics_queries; int free_so_statistics_query_size; } ;


 int ERR (char*,int ,int ,struct wined3d_context*) ;
 int list_remove (int *) ;
 int wined3d_array_reserve (void**,int *,scalar_t__,int) ;

void context_free_so_statistics_query(struct wined3d_so_statistics_query *query)
{
    struct wined3d_context *context = query->context;

    list_remove(&query->entry);
    query->context = ((void*)0);

    if (!wined3d_array_reserve((void **)&context->free_so_statistics_queries,
            &context->free_so_statistics_query_size, context->free_so_statistics_query_count + 1,
            sizeof(*context->free_so_statistics_queries)))
    {
        ERR("Failed to grow free list, leaking GL queries %u, %u in context %p.\n",
                query->u.id[0], query->u.id[1], context);
        return;
    }

    context->free_so_statistics_queries[context->free_so_statistics_query_count++] = query->u;
}
