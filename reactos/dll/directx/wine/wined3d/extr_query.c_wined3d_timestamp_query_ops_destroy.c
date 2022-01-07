
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_timestamp_query {scalar_t__ context; } ;
struct wined3d_query {int dummy; } ;


 int context_free_timestamp_query (struct wined3d_timestamp_query*) ;
 int heap_free (struct wined3d_timestamp_query*) ;
 struct wined3d_timestamp_query* wined3d_timestamp_query_from_query (struct wined3d_query*) ;

__attribute__((used)) static void wined3d_timestamp_query_ops_destroy(struct wined3d_query *query)
{
    struct wined3d_timestamp_query *tq = wined3d_timestamp_query_from_query(query);

    if (tq->context)
        context_free_timestamp_query(tq);
    heap_free(tq);
}
